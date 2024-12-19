import 'package:hive/hive.dart';
import 'package:recipe/data/models/recipe_model.dart';
import 'package:recipe/core/errors/exceptions.dart';

abstract class RecipeLocalDataSource {
  Future<List<RecipeModel>> getCachedRecipes();
  Future<void> cacheRecipes(List<RecipeModel> recipes);
  Future<RecipeModel?> getCachedRecipeById(String id);
  Future<void> cacheRecipe(RecipeModel recipe);
  Future<List<RecipeModel>> getCachedFavorites();
  Future<void> cacheFavorites(List<RecipeModel> recipes);
  Future<void> clearCache();
}

class RecipeLocalDataSourceImpl implements RecipeLocalDataSource {
  final Box<Map> recipeBox;
  final Box<Map> favoriteBox;

  RecipeLocalDataSourceImpl({
    required this.recipeBox,
    required this.favoriteBox,
  });

  @override
  Future<List<RecipeModel>> getCachedRecipes() async {
    try {
      final recipes = recipeBox.values.toList();
      return recipes
          .map((json) => RecipeModel.fromJson(Map<String, dynamic>.from(json)))
          .toList();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheRecipes(List<RecipeModel> recipes) async {
    try {
      await recipeBox.clear();
      await recipeBox.putAll(
        Map.fromEntries(
          recipes.map(
            (recipe) => MapEntry(recipe.id, recipe.toJson()),
          ),
        ),
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<RecipeModel?> getCachedRecipeById(String id) async {
    try {
      final recipe = recipeBox.get(id);
      if (recipe == null) return null;
      return RecipeModel.fromJson(Map<String, dynamic>.from(recipe));
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheRecipe(RecipeModel recipe) async {
    try {
      await recipeBox.put(recipe.id, recipe.toJson());
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<RecipeModel>> getCachedFavorites() async {
    try {
      final favorites = favoriteBox.values.toList();
      return favorites
          .map((json) => RecipeModel.fromJson(Map<String, dynamic>.from(json)))
          .toList();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheFavorites(List<RecipeModel> recipes) async {
    try {
      await favoriteBox.clear();
      await favoriteBox.putAll(
        Map.fromEntries(
          recipes.map(
            (recipe) => MapEntry(recipe.id, recipe.toJson()),
          ),
        ),
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> clearCache() async {
    try {
      await recipeBox.clear();
      await favoriteBox.clear();
    } catch (e) {
      throw CacheException();
    }
  }
} 