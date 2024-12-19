import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:recipe/data/models/recipe_model.dart';
import 'package:recipe/core/errors/exceptions.dart';

abstract class RecipeRemoteDataSource {
  Future<List<RecipeModel>> getRecipes();
  Future<RecipeModel> getRecipeById(String id);
  Future<List<RecipeModel>> searchRecipes(String query);
  Future<List<RecipeModel>> getRecipesByCategory(String category);
  Future<List<RecipeModel>> getFavoriteRecipes();
  Future<void> toggleFavorite(String recipeId);
  Future<RecipeModel> createRecipe(RecipeModel recipe);
  Future<RecipeModel> updateRecipe(RecipeModel recipe);
  Future<void> deleteRecipe(String id);
}

class RecipeRemoteDataSourceImpl implements RecipeRemoteDataSource {
  final SupabaseClient supabaseClient;

  RecipeRemoteDataSourceImpl({required this.supabaseClient});

  @override
  Future<List<RecipeModel>> getRecipes() async {
    try {
      final response = await supabaseClient
          .from('recipes')
          .select()
          .order('created_at', ascending: false);
      
      return (response as List)
          .map((json) => RecipeModel.fromJson(json))
          .toList();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<RecipeModel> getRecipeById(String id) async {
    try {
      final response = await supabaseClient
          .from('recipes')
          .select()
          .eq('id', id)
          .single();
      
      return RecipeModel.fromJson(response);
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<RecipeModel>> searchRecipes(String query) async {
    try {
      final response = await supabaseClient
          .from('recipes')
          .select()
          .textSearch('title', query)
          .order('created_at', ascending: false);
      
      return (response as List)
          .map((json) => RecipeModel.fromJson(json))
          .toList();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<RecipeModel>> getRecipesByCategory(String category) async {
    try {
      final response = await supabaseClient
          .from('recipes')
          .select()
          .eq('category', category)
          .order('created_at', ascending: false);
      
      return (response as List)
          .map((json) => RecipeModel.fromJson(json))
          .toList();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<RecipeModel>> getFavoriteRecipes() async {
    try {
      final userId = supabaseClient.auth.currentUser?.id;
      if (userId == null) throw ServerException();

      final response = await supabaseClient
          .from('favorites')
          .select('recipe_id, recipes(*)')
          .eq('user_id', userId);
      
      return (response as List)
          .map((json) => RecipeModel.fromJson(json['recipes']))
          .toList();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<void> toggleFavorite(String recipeId) async {
    try {
      final userId = supabaseClient.auth.currentUser?.id;
      if (userId == null) throw ServerException();

      final existing = await supabaseClient
          .from('favorites')
          .select()
          .eq('user_id', userId)
          .eq('recipe_id', recipeId)
          .maybeSingle();

      if (existing == null) {
        await supabaseClient.from('favorites').insert({
          'user_id': userId,
          'recipe_id': recipeId,
        });
      } else {
        await supabaseClient
            .from('favorites')
            .delete()
            .eq('user_id', userId)
            .eq('recipe_id', recipeId);
      }
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<RecipeModel> createRecipe(RecipeModel recipe) async {
    try {
      final response = await supabaseClient
          .from('recipes')
          .insert(recipe.toJson())
          .select()
          .single();
      
      return RecipeModel.fromJson(response);
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<RecipeModel> updateRecipe(RecipeModel recipe) async {
    try {
      final response = await supabaseClient
          .from('recipes')
          .update(recipe.toJson())
          .eq('id', recipe.id)
          .select()
          .single();
      
      return RecipeModel.fromJson(response);
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<void> deleteRecipe(String id) async {
    try {
      await supabaseClient
          .from('recipes')
          .delete()
          .eq('id', id);
    } catch (e) {
      throw ServerException();
    }
  }
} 