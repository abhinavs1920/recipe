import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe/data/models/recipe_model.dart';

part 'recipe_state.freezed.dart';

@freezed
class RecipeState with _$RecipeState {
  const factory RecipeState.initial() = _Initial;
  const factory RecipeState.loading() = _Loading;
  const factory RecipeState.error(String message) = _Error;
  const factory RecipeState.recipesLoaded(List<RecipeModel> recipes) = _RecipesLoaded;
  const factory RecipeState.bookmarkAdded() = _BookmarkAdded;
  const factory RecipeState.bookmarkRemoved() = _BookmarkRemoved;
  const factory RecipeState.likeAdded() = _LikeAdded;
  const factory RecipeState.likeRemoved() = _LikeRemoved;
  const factory RecipeState.bookmarkStatus(bool isBookmarked) = _BookmarkStatus;
  const factory RecipeState.likeStatus(bool isLiked) = _LikeStatus;
  const factory RecipeState.stats(int bookmarksCount, int likesCount) = _Stats;
} 