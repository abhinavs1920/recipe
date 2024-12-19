import 'package:recipe/domain/entities/recipe.dart';

abstract class RecipeRepository {
  Future<List<Recipe>> getRecipes();
  Future<Recipe> getRecipeById(String id);
  Future<List<Recipe>> searchRecipes(String query);
  Future<List<Recipe>> getRecipesByCategory(String category);
  Future<List<Recipe>> getFavoriteRecipes();
  Future<void> toggleFavorite(String recipeId);
  Future<Recipe> createRecipe(Recipe recipe);
  Future<Recipe> updateRecipe(Recipe recipe);
  Future<void> deleteRecipe(String id);
  Future<List<Recipe>> getAIRecipeRecommendations(String prompt);
} 