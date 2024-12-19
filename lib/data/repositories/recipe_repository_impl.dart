import 'package:recipe/core/errors/exceptions.dart';
import 'package:recipe/core/network/network_info.dart';
import 'package:recipe/data/datasources/recipe_local_data_source.dart';
import 'package:recipe/data/datasources/recipe_remote_data_source.dart';
import 'package:recipe/data/models/recipe_model.dart';
import 'package:recipe/domain/entities/recipe.dart';
import 'package:recipe/domain/repositories/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeRemoteDataSource remoteDataSource;
  final RecipeLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  RecipeRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<List<Recipe>> getRecipes() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteRecipes = await remoteDataSource.getRecipes();
        await localDataSource.cacheRecipes(remoteRecipes);
        return remoteRecipes;
      } on ServerException {
        final localRecipes = await localDataSource.getCachedRecipes();
        return localRecipes;
      }
    } else {
      final localRecipes = await localDataSource.getCachedRecipes();
      return localRecipes;
    }
  }

  @override
  Future<Recipe> getRecipeById(String id) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteRecipe = await remoteDataSource.getRecipeById(id);
        await localDataSource.cacheRecipe(remoteRecipe);
        return remoteRecipe;
      } on ServerException {
        final localRecipe = await localDataSource.getCachedRecipeById(id);
        if (localRecipe != null) {
          return localRecipe;
        } else {
          throw CacheException();
        }
      }
    } else {
      final localRecipe = await localDataSource.getCachedRecipeById(id);
      if (localRecipe != null) {
        return localRecipe;
      } else {
        throw CacheException();
      }
    }
  }

  @override
  Future<List<Recipe>> searchRecipes(String query) async {
    if (await networkInfo.isConnected) {
      final recipes = await remoteDataSource.searchRecipes(query);
      return recipes;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<Recipe>> getRecipesByCategory(String category) async {
    if (await networkInfo.isConnected) {
      final recipes = await remoteDataSource.getRecipesByCategory(category);
      return recipes;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<Recipe>> getFavoriteRecipes() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteFavorites = await remoteDataSource.getFavoriteRecipes();
        await localDataSource.cacheFavorites(remoteFavorites);
        return remoteFavorites;
      } on ServerException {
        final localFavorites = await localDataSource.getCachedFavorites();
        return localFavorites;
      }
    } else {
      final localFavorites = await localDataSource.getCachedFavorites();
      return localFavorites;
    }
  }

  @override
  Future<void> toggleFavorite(String recipeId) async {
    if (await networkInfo.isConnected) {
      await remoteDataSource.toggleFavorite(recipeId);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<Recipe> createRecipe(Recipe recipe) async {
    if (await networkInfo.isConnected) {
      final recipeModel = RecipeModel.fromEntity(recipe);
      final createdRecipe = await remoteDataSource.createRecipe(recipeModel);
      await localDataSource.cacheRecipe(createdRecipe);
      return createdRecipe;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<Recipe> updateRecipe(Recipe recipe) async {
    if (await networkInfo.isConnected) {
      final recipeModel = RecipeModel.fromEntity(recipe);
      final updatedRecipe = await remoteDataSource.updateRecipe(recipeModel);
      await localDataSource.cacheRecipe(updatedRecipe);
      return updatedRecipe;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> deleteRecipe(String id) async {
    if (await networkInfo.isConnected) {
      await remoteDataSource.deleteRecipe(id);
      // Remove from local cache as well
      await localDataSource.clearCache();
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<Recipe>> getAIRecipeRecommendations(String prompt) async {
    // This will be implemented with OpenAI integration
    throw UnimplementedError();
  }
} 