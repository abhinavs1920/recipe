import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/core/utils/logger.dart';
import 'package:recipe/data/models/recipe_model.dart';
import 'package:recipe/view/cubits/recipe_state.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RecipeCubit extends Cubit<RecipeState> {
  final SupabaseClient _supabaseClient;

  RecipeCubit(this._supabaseClient) : super(const RecipeState.initial());

  Future<void> fetchRecipes() async {
    try {
      logger.i('Fetching recipes from Supabase');
      emit(const RecipeState.loading());

      final List<dynamic> response = await _supabaseClient
          .from('recipes')
          .select()
          .order('created_at', ascending: false);

          logger.i(response);

      final recipes = response
          .map((json) => RecipeModel.fromJson(json as Map<String, dynamic>))
          .toList();
      logger.i('Fetched ${recipes.length} recipes');

      emit(RecipeState.recipesLoaded(recipes));
    } catch (e) {
      logger.e('Error fetching recipes: $e');
      emit(RecipeState.error(e.toString()));
    }
  }

  Future<void> toggleBookmark(String recipeId) async {
    try {
      logger.i('Toggling bookmark for recipe: $recipeId');
      final userId = _supabaseClient.auth.currentUser?.id;
      if (userId == null) {
        logger.w('No user logged in');
        emit(const RecipeState.error('User not authenticated'));
        return;
      }

      final existingBookmark = await _supabaseClient
          .from('bookmarks')
          .select()
          .eq('user_id', userId)
          .eq('recipe_id', recipeId)
          .maybeSingle();

      if (existingBookmark == null) {
        await _supabaseClient.from('bookmarks').insert({
          'user_id': userId,
          'recipe_id': recipeId,
        });
        logger.i('Bookmark added');
        emit(const RecipeState.bookmarkAdded());
      } else {
        await _supabaseClient
            .from('bookmarks')
            .delete()
            .eq('user_id', userId)
            .eq('recipe_id', recipeId);
        logger.i('Bookmark removed');
        emit(const RecipeState.bookmarkRemoved());
      }
    } catch (e) {
      logger.e('Error toggling bookmark: $e');
      emit(RecipeState.error(e.toString()));
    }
  }

  Future<void> toggleLike(String recipeId) async {
    try {
      logger.i('Toggling like for recipe: $recipeId');
      final userId = _supabaseClient.auth.currentUser?.id;
      if (userId == null) {
        logger.w('No user logged in');
        emit(const RecipeState.error('User not authenticated'));
        return;
      }

      final existingLike = await _supabaseClient
          .from('likes')
          .select()
          .eq('user_id', userId)
          .eq('recipe_id', recipeId)
          .maybeSingle();

      if (existingLike == null) {
        await _supabaseClient.from('likes').insert({
          'user_id': userId,
          'recipe_id': recipeId,
        });
        logger.i('Like added');
        emit(const RecipeState.likeAdded());
      } else {
        await _supabaseClient
            .from('likes')
            .delete()
            .eq('user_id', userId)
            .eq('recipe_id', recipeId);
        logger.i('Like removed');
        emit(const RecipeState.likeRemoved());
      }
    } catch (e) {
      logger.e('Error toggling like: $e');
      emit(RecipeState.error(e.toString()));
    }
  }

  Future<void> checkBookmarkStatus(String recipeId) async {
    try {
      logger.i('Checking bookmark status for recipe: $recipeId');
      final userId = _supabaseClient.auth.currentUser?.id;
      if (userId == null) {
        logger.w('No user logged in');
        emit(const RecipeState.error('User not authenticated'));
        return;
      }

      final bookmark = await _supabaseClient
          .from('bookmarks')
          .select()
          .eq('user_id', userId)
          .eq('recipe_id', recipeId)
          .maybeSingle();

      emit(RecipeState.bookmarkStatus(bookmark != null));
      logger.i('Bookmark status: ${bookmark != null}');
    } catch (e) {
      logger.e('Error checking bookmark status: $e');
      emit(RecipeState.error(e.toString()));
    }
  }

  Future<void> checkLikeStatus(String recipeId) async {
    try {
      logger.i('Checking like status for recipe: $recipeId');
      final userId = _supabaseClient.auth.currentUser?.id;
      if (userId == null) {
        logger.w('No user logged in');
        emit(const RecipeState.error('User not authenticated'));
        return;
      }

      final like = await _supabaseClient
          .from('likes')
          .select()
          .eq('user_id', userId)
          .eq('recipe_id', recipeId)
          .maybeSingle();

      emit(RecipeState.likeStatus(like != null));
      logger.i('Like status: ${like != null}');
    } catch (e) {
      logger.e('Error checking like status: $e');
      emit(RecipeState.error(e.toString()));
    }
  }

  Future<void> getRecipeStats(String recipeId) async {
    try {
      logger.i('Fetching stats for recipe: $recipeId');
      
      final bookmarksCount = await _supabaseClient
          .from('bookmarks')
          .select()
          .eq('recipe_id', recipeId)
          .count();

      final likesCount = await _supabaseClient
          .from('likes')
          .select()
          .eq('recipe_id', recipeId)
          .count();

      emit(RecipeState.stats(bookmarksCount as int, likesCount as int));
      logger.i('Stats fetched - Bookmarks: $bookmarksCount, Likes: $likesCount');
    } catch (e) {
      logger.e('Error fetching recipe stats: $e');
      emit(RecipeState.error(e.toString()));
    }
  }
} 