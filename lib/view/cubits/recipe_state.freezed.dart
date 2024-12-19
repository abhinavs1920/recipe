// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RecipeModel> recipes) recipesLoaded,
    required TResult Function() bookmarkAdded,
    required TResult Function() bookmarkRemoved,
    required TResult Function() likeAdded,
    required TResult Function() likeRemoved,
    required TResult Function(bool isBookmarked) bookmarkStatus,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(int bookmarksCount, int likesCount) stats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult? Function()? bookmarkAdded,
    TResult? Function()? bookmarkRemoved,
    TResult? Function()? likeAdded,
    TResult? Function()? likeRemoved,
    TResult? Function(bool isBookmarked)? bookmarkStatus,
    TResult? Function(bool isLiked)? likeStatus,
    TResult? Function(int bookmarksCount, int likesCount)? stats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult Function()? bookmarkAdded,
    TResult Function()? bookmarkRemoved,
    TResult Function()? likeAdded,
    TResult Function()? likeRemoved,
    TResult Function(bool isBookmarked)? bookmarkStatus,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(int bookmarksCount, int likesCount)? stats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RecipesLoaded value) recipesLoaded,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_BookmarkRemoved value) bookmarkRemoved,
    required TResult Function(_LikeAdded value) likeAdded,
    required TResult Function(_LikeRemoved value) likeRemoved,
    required TResult Function(_BookmarkStatus value) bookmarkStatus,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_Stats value) stats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecipesLoaded value)? recipesLoaded,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult? Function(_LikeAdded value)? likeAdded,
    TResult? Function(_LikeRemoved value)? likeRemoved,
    TResult? Function(_BookmarkStatus value)? bookmarkStatus,
    TResult? Function(_LikeStatus value)? likeStatus,
    TResult? Function(_Stats value)? stats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RecipesLoaded value)? recipesLoaded,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult Function(_LikeAdded value)? likeAdded,
    TResult Function(_LikeRemoved value)? likeRemoved,
    TResult Function(_BookmarkStatus value)? bookmarkStatus,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_Stats value)? stats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStateCopyWith<$Res> {
  factory $RecipeStateCopyWith(
          RecipeState value, $Res Function(RecipeState) then) =
      _$RecipeStateCopyWithImpl<$Res, RecipeState>;
}

/// @nodoc
class _$RecipeStateCopyWithImpl<$Res, $Val extends RecipeState>
    implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RecipeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RecipeModel> recipes) recipesLoaded,
    required TResult Function() bookmarkAdded,
    required TResult Function() bookmarkRemoved,
    required TResult Function() likeAdded,
    required TResult Function() likeRemoved,
    required TResult Function(bool isBookmarked) bookmarkStatus,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(int bookmarksCount, int likesCount) stats,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult? Function()? bookmarkAdded,
    TResult? Function()? bookmarkRemoved,
    TResult? Function()? likeAdded,
    TResult? Function()? likeRemoved,
    TResult? Function(bool isBookmarked)? bookmarkStatus,
    TResult? Function(bool isLiked)? likeStatus,
    TResult? Function(int bookmarksCount, int likesCount)? stats,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult Function()? bookmarkAdded,
    TResult Function()? bookmarkRemoved,
    TResult Function()? likeAdded,
    TResult Function()? likeRemoved,
    TResult Function(bool isBookmarked)? bookmarkStatus,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(int bookmarksCount, int likesCount)? stats,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RecipesLoaded value) recipesLoaded,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_BookmarkRemoved value) bookmarkRemoved,
    required TResult Function(_LikeAdded value) likeAdded,
    required TResult Function(_LikeRemoved value) likeRemoved,
    required TResult Function(_BookmarkStatus value) bookmarkStatus,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_Stats value) stats,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecipesLoaded value)? recipesLoaded,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult? Function(_LikeAdded value)? likeAdded,
    TResult? Function(_LikeRemoved value)? likeRemoved,
    TResult? Function(_BookmarkStatus value)? bookmarkStatus,
    TResult? Function(_LikeStatus value)? likeStatus,
    TResult? Function(_Stats value)? stats,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RecipesLoaded value)? recipesLoaded,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult Function(_LikeAdded value)? likeAdded,
    TResult Function(_LikeRemoved value)? likeRemoved,
    TResult Function(_BookmarkStatus value)? bookmarkStatus,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_Stats value)? stats,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RecipeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RecipeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RecipeModel> recipes) recipesLoaded,
    required TResult Function() bookmarkAdded,
    required TResult Function() bookmarkRemoved,
    required TResult Function() likeAdded,
    required TResult Function() likeRemoved,
    required TResult Function(bool isBookmarked) bookmarkStatus,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(int bookmarksCount, int likesCount) stats,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult? Function()? bookmarkAdded,
    TResult? Function()? bookmarkRemoved,
    TResult? Function()? likeAdded,
    TResult? Function()? likeRemoved,
    TResult? Function(bool isBookmarked)? bookmarkStatus,
    TResult? Function(bool isLiked)? likeStatus,
    TResult? Function(int bookmarksCount, int likesCount)? stats,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult Function()? bookmarkAdded,
    TResult Function()? bookmarkRemoved,
    TResult Function()? likeAdded,
    TResult Function()? likeRemoved,
    TResult Function(bool isBookmarked)? bookmarkStatus,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(int bookmarksCount, int likesCount)? stats,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RecipesLoaded value) recipesLoaded,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_BookmarkRemoved value) bookmarkRemoved,
    required TResult Function(_LikeAdded value) likeAdded,
    required TResult Function(_LikeRemoved value) likeRemoved,
    required TResult Function(_BookmarkStatus value) bookmarkStatus,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_Stats value) stats,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecipesLoaded value)? recipesLoaded,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult? Function(_LikeAdded value)? likeAdded,
    TResult? Function(_LikeRemoved value)? likeRemoved,
    TResult? Function(_BookmarkStatus value)? bookmarkStatus,
    TResult? Function(_LikeStatus value)? likeStatus,
    TResult? Function(_Stats value)? stats,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RecipesLoaded value)? recipesLoaded,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult Function(_LikeAdded value)? likeAdded,
    TResult Function(_LikeRemoved value)? likeRemoved,
    TResult Function(_BookmarkStatus value)? bookmarkStatus,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_Stats value)? stats,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RecipeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RecipeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RecipeModel> recipes) recipesLoaded,
    required TResult Function() bookmarkAdded,
    required TResult Function() bookmarkRemoved,
    required TResult Function() likeAdded,
    required TResult Function() likeRemoved,
    required TResult Function(bool isBookmarked) bookmarkStatus,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(int bookmarksCount, int likesCount) stats,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult? Function()? bookmarkAdded,
    TResult? Function()? bookmarkRemoved,
    TResult? Function()? likeAdded,
    TResult? Function()? likeRemoved,
    TResult? Function(bool isBookmarked)? bookmarkStatus,
    TResult? Function(bool isLiked)? likeStatus,
    TResult? Function(int bookmarksCount, int likesCount)? stats,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult Function()? bookmarkAdded,
    TResult Function()? bookmarkRemoved,
    TResult Function()? likeAdded,
    TResult Function()? likeRemoved,
    TResult Function(bool isBookmarked)? bookmarkStatus,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(int bookmarksCount, int likesCount)? stats,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RecipesLoaded value) recipesLoaded,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_BookmarkRemoved value) bookmarkRemoved,
    required TResult Function(_LikeAdded value) likeAdded,
    required TResult Function(_LikeRemoved value) likeRemoved,
    required TResult Function(_BookmarkStatus value) bookmarkStatus,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_Stats value) stats,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecipesLoaded value)? recipesLoaded,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult? Function(_LikeAdded value)? likeAdded,
    TResult? Function(_LikeRemoved value)? likeRemoved,
    TResult? Function(_BookmarkStatus value)? bookmarkStatus,
    TResult? Function(_LikeStatus value)? likeStatus,
    TResult? Function(_Stats value)? stats,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RecipesLoaded value)? recipesLoaded,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult Function(_LikeAdded value)? likeAdded,
    TResult Function(_LikeRemoved value)? likeRemoved,
    TResult Function(_BookmarkStatus value)? bookmarkStatus,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_Stats value)? stats,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RecipeState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipesLoadedImplCopyWith<$Res> {
  factory _$$RecipesLoadedImplCopyWith(
          _$RecipesLoadedImpl value, $Res Function(_$RecipesLoadedImpl) then) =
      __$$RecipesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RecipeModel> recipes});
}

/// @nodoc
class __$$RecipesLoadedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$RecipesLoadedImpl>
    implements _$$RecipesLoadedImplCopyWith<$Res> {
  __$$RecipesLoadedImplCopyWithImpl(
      _$RecipesLoadedImpl _value, $Res Function(_$RecipesLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$RecipesLoadedImpl(
      null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>,
    ));
  }
}

/// @nodoc

class _$RecipesLoadedImpl implements _RecipesLoaded {
  const _$RecipesLoadedImpl(final List<RecipeModel> recipes)
      : _recipes = recipes;

  final List<RecipeModel> _recipes;
  @override
  List<RecipeModel> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'RecipeState.recipesLoaded(recipes: $recipes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesLoadedImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesLoadedImplCopyWith<_$RecipesLoadedImpl> get copyWith =>
      __$$RecipesLoadedImplCopyWithImpl<_$RecipesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RecipeModel> recipes) recipesLoaded,
    required TResult Function() bookmarkAdded,
    required TResult Function() bookmarkRemoved,
    required TResult Function() likeAdded,
    required TResult Function() likeRemoved,
    required TResult Function(bool isBookmarked) bookmarkStatus,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(int bookmarksCount, int likesCount) stats,
  }) {
    return recipesLoaded(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult? Function()? bookmarkAdded,
    TResult? Function()? bookmarkRemoved,
    TResult? Function()? likeAdded,
    TResult? Function()? likeRemoved,
    TResult? Function(bool isBookmarked)? bookmarkStatus,
    TResult? Function(bool isLiked)? likeStatus,
    TResult? Function(int bookmarksCount, int likesCount)? stats,
  }) {
    return recipesLoaded?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult Function()? bookmarkAdded,
    TResult Function()? bookmarkRemoved,
    TResult Function()? likeAdded,
    TResult Function()? likeRemoved,
    TResult Function(bool isBookmarked)? bookmarkStatus,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(int bookmarksCount, int likesCount)? stats,
    required TResult orElse(),
  }) {
    if (recipesLoaded != null) {
      return recipesLoaded(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RecipesLoaded value) recipesLoaded,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_BookmarkRemoved value) bookmarkRemoved,
    required TResult Function(_LikeAdded value) likeAdded,
    required TResult Function(_LikeRemoved value) likeRemoved,
    required TResult Function(_BookmarkStatus value) bookmarkStatus,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_Stats value) stats,
  }) {
    return recipesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecipesLoaded value)? recipesLoaded,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult? Function(_LikeAdded value)? likeAdded,
    TResult? Function(_LikeRemoved value)? likeRemoved,
    TResult? Function(_BookmarkStatus value)? bookmarkStatus,
    TResult? Function(_LikeStatus value)? likeStatus,
    TResult? Function(_Stats value)? stats,
  }) {
    return recipesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RecipesLoaded value)? recipesLoaded,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult Function(_LikeAdded value)? likeAdded,
    TResult Function(_LikeRemoved value)? likeRemoved,
    TResult Function(_BookmarkStatus value)? bookmarkStatus,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_Stats value)? stats,
    required TResult orElse(),
  }) {
    if (recipesLoaded != null) {
      return recipesLoaded(this);
    }
    return orElse();
  }
}

abstract class _RecipesLoaded implements RecipeState {
  const factory _RecipesLoaded(final List<RecipeModel> recipes) =
      _$RecipesLoadedImpl;

  List<RecipeModel> get recipes;

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipesLoadedImplCopyWith<_$RecipesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarkAddedImplCopyWith<$Res> {
  factory _$$BookmarkAddedImplCopyWith(
          _$BookmarkAddedImpl value, $Res Function(_$BookmarkAddedImpl) then) =
      __$$BookmarkAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookmarkAddedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$BookmarkAddedImpl>
    implements _$$BookmarkAddedImplCopyWith<$Res> {
  __$$BookmarkAddedImplCopyWithImpl(
      _$BookmarkAddedImpl _value, $Res Function(_$BookmarkAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookmarkAddedImpl implements _BookmarkAdded {
  const _$BookmarkAddedImpl();

  @override
  String toString() {
    return 'RecipeState.bookmarkAdded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookmarkAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RecipeModel> recipes) recipesLoaded,
    required TResult Function() bookmarkAdded,
    required TResult Function() bookmarkRemoved,
    required TResult Function() likeAdded,
    required TResult Function() likeRemoved,
    required TResult Function(bool isBookmarked) bookmarkStatus,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(int bookmarksCount, int likesCount) stats,
  }) {
    return bookmarkAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult? Function()? bookmarkAdded,
    TResult? Function()? bookmarkRemoved,
    TResult? Function()? likeAdded,
    TResult? Function()? likeRemoved,
    TResult? Function(bool isBookmarked)? bookmarkStatus,
    TResult? Function(bool isLiked)? likeStatus,
    TResult? Function(int bookmarksCount, int likesCount)? stats,
  }) {
    return bookmarkAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult Function()? bookmarkAdded,
    TResult Function()? bookmarkRemoved,
    TResult Function()? likeAdded,
    TResult Function()? likeRemoved,
    TResult Function(bool isBookmarked)? bookmarkStatus,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(int bookmarksCount, int likesCount)? stats,
    required TResult orElse(),
  }) {
    if (bookmarkAdded != null) {
      return bookmarkAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RecipesLoaded value) recipesLoaded,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_BookmarkRemoved value) bookmarkRemoved,
    required TResult Function(_LikeAdded value) likeAdded,
    required TResult Function(_LikeRemoved value) likeRemoved,
    required TResult Function(_BookmarkStatus value) bookmarkStatus,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_Stats value) stats,
  }) {
    return bookmarkAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecipesLoaded value)? recipesLoaded,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult? Function(_LikeAdded value)? likeAdded,
    TResult? Function(_LikeRemoved value)? likeRemoved,
    TResult? Function(_BookmarkStatus value)? bookmarkStatus,
    TResult? Function(_LikeStatus value)? likeStatus,
    TResult? Function(_Stats value)? stats,
  }) {
    return bookmarkAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RecipesLoaded value)? recipesLoaded,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult Function(_LikeAdded value)? likeAdded,
    TResult Function(_LikeRemoved value)? likeRemoved,
    TResult Function(_BookmarkStatus value)? bookmarkStatus,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_Stats value)? stats,
    required TResult orElse(),
  }) {
    if (bookmarkAdded != null) {
      return bookmarkAdded(this);
    }
    return orElse();
  }
}

abstract class _BookmarkAdded implements RecipeState {
  const factory _BookmarkAdded() = _$BookmarkAddedImpl;
}

/// @nodoc
abstract class _$$BookmarkRemovedImplCopyWith<$Res> {
  factory _$$BookmarkRemovedImplCopyWith(_$BookmarkRemovedImpl value,
          $Res Function(_$BookmarkRemovedImpl) then) =
      __$$BookmarkRemovedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookmarkRemovedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$BookmarkRemovedImpl>
    implements _$$BookmarkRemovedImplCopyWith<$Res> {
  __$$BookmarkRemovedImplCopyWithImpl(
      _$BookmarkRemovedImpl _value, $Res Function(_$BookmarkRemovedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookmarkRemovedImpl implements _BookmarkRemoved {
  const _$BookmarkRemovedImpl();

  @override
  String toString() {
    return 'RecipeState.bookmarkRemoved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookmarkRemovedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RecipeModel> recipes) recipesLoaded,
    required TResult Function() bookmarkAdded,
    required TResult Function() bookmarkRemoved,
    required TResult Function() likeAdded,
    required TResult Function() likeRemoved,
    required TResult Function(bool isBookmarked) bookmarkStatus,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(int bookmarksCount, int likesCount) stats,
  }) {
    return bookmarkRemoved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult? Function()? bookmarkAdded,
    TResult? Function()? bookmarkRemoved,
    TResult? Function()? likeAdded,
    TResult? Function()? likeRemoved,
    TResult? Function(bool isBookmarked)? bookmarkStatus,
    TResult? Function(bool isLiked)? likeStatus,
    TResult? Function(int bookmarksCount, int likesCount)? stats,
  }) {
    return bookmarkRemoved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult Function()? bookmarkAdded,
    TResult Function()? bookmarkRemoved,
    TResult Function()? likeAdded,
    TResult Function()? likeRemoved,
    TResult Function(bool isBookmarked)? bookmarkStatus,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(int bookmarksCount, int likesCount)? stats,
    required TResult orElse(),
  }) {
    if (bookmarkRemoved != null) {
      return bookmarkRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RecipesLoaded value) recipesLoaded,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_BookmarkRemoved value) bookmarkRemoved,
    required TResult Function(_LikeAdded value) likeAdded,
    required TResult Function(_LikeRemoved value) likeRemoved,
    required TResult Function(_BookmarkStatus value) bookmarkStatus,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_Stats value) stats,
  }) {
    return bookmarkRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecipesLoaded value)? recipesLoaded,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult? Function(_LikeAdded value)? likeAdded,
    TResult? Function(_LikeRemoved value)? likeRemoved,
    TResult? Function(_BookmarkStatus value)? bookmarkStatus,
    TResult? Function(_LikeStatus value)? likeStatus,
    TResult? Function(_Stats value)? stats,
  }) {
    return bookmarkRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RecipesLoaded value)? recipesLoaded,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult Function(_LikeAdded value)? likeAdded,
    TResult Function(_LikeRemoved value)? likeRemoved,
    TResult Function(_BookmarkStatus value)? bookmarkStatus,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_Stats value)? stats,
    required TResult orElse(),
  }) {
    if (bookmarkRemoved != null) {
      return bookmarkRemoved(this);
    }
    return orElse();
  }
}

abstract class _BookmarkRemoved implements RecipeState {
  const factory _BookmarkRemoved() = _$BookmarkRemovedImpl;
}

/// @nodoc
abstract class _$$LikeAddedImplCopyWith<$Res> {
  factory _$$LikeAddedImplCopyWith(
          _$LikeAddedImpl value, $Res Function(_$LikeAddedImpl) then) =
      __$$LikeAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LikeAddedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$LikeAddedImpl>
    implements _$$LikeAddedImplCopyWith<$Res> {
  __$$LikeAddedImplCopyWithImpl(
      _$LikeAddedImpl _value, $Res Function(_$LikeAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LikeAddedImpl implements _LikeAdded {
  const _$LikeAddedImpl();

  @override
  String toString() {
    return 'RecipeState.likeAdded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LikeAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RecipeModel> recipes) recipesLoaded,
    required TResult Function() bookmarkAdded,
    required TResult Function() bookmarkRemoved,
    required TResult Function() likeAdded,
    required TResult Function() likeRemoved,
    required TResult Function(bool isBookmarked) bookmarkStatus,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(int bookmarksCount, int likesCount) stats,
  }) {
    return likeAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult? Function()? bookmarkAdded,
    TResult? Function()? bookmarkRemoved,
    TResult? Function()? likeAdded,
    TResult? Function()? likeRemoved,
    TResult? Function(bool isBookmarked)? bookmarkStatus,
    TResult? Function(bool isLiked)? likeStatus,
    TResult? Function(int bookmarksCount, int likesCount)? stats,
  }) {
    return likeAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult Function()? bookmarkAdded,
    TResult Function()? bookmarkRemoved,
    TResult Function()? likeAdded,
    TResult Function()? likeRemoved,
    TResult Function(bool isBookmarked)? bookmarkStatus,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(int bookmarksCount, int likesCount)? stats,
    required TResult orElse(),
  }) {
    if (likeAdded != null) {
      return likeAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RecipesLoaded value) recipesLoaded,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_BookmarkRemoved value) bookmarkRemoved,
    required TResult Function(_LikeAdded value) likeAdded,
    required TResult Function(_LikeRemoved value) likeRemoved,
    required TResult Function(_BookmarkStatus value) bookmarkStatus,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_Stats value) stats,
  }) {
    return likeAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecipesLoaded value)? recipesLoaded,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult? Function(_LikeAdded value)? likeAdded,
    TResult? Function(_LikeRemoved value)? likeRemoved,
    TResult? Function(_BookmarkStatus value)? bookmarkStatus,
    TResult? Function(_LikeStatus value)? likeStatus,
    TResult? Function(_Stats value)? stats,
  }) {
    return likeAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RecipesLoaded value)? recipesLoaded,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult Function(_LikeAdded value)? likeAdded,
    TResult Function(_LikeRemoved value)? likeRemoved,
    TResult Function(_BookmarkStatus value)? bookmarkStatus,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_Stats value)? stats,
    required TResult orElse(),
  }) {
    if (likeAdded != null) {
      return likeAdded(this);
    }
    return orElse();
  }
}

abstract class _LikeAdded implements RecipeState {
  const factory _LikeAdded() = _$LikeAddedImpl;
}

/// @nodoc
abstract class _$$LikeRemovedImplCopyWith<$Res> {
  factory _$$LikeRemovedImplCopyWith(
          _$LikeRemovedImpl value, $Res Function(_$LikeRemovedImpl) then) =
      __$$LikeRemovedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LikeRemovedImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$LikeRemovedImpl>
    implements _$$LikeRemovedImplCopyWith<$Res> {
  __$$LikeRemovedImplCopyWithImpl(
      _$LikeRemovedImpl _value, $Res Function(_$LikeRemovedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LikeRemovedImpl implements _LikeRemoved {
  const _$LikeRemovedImpl();

  @override
  String toString() {
    return 'RecipeState.likeRemoved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LikeRemovedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RecipeModel> recipes) recipesLoaded,
    required TResult Function() bookmarkAdded,
    required TResult Function() bookmarkRemoved,
    required TResult Function() likeAdded,
    required TResult Function() likeRemoved,
    required TResult Function(bool isBookmarked) bookmarkStatus,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(int bookmarksCount, int likesCount) stats,
  }) {
    return likeRemoved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult? Function()? bookmarkAdded,
    TResult? Function()? bookmarkRemoved,
    TResult? Function()? likeAdded,
    TResult? Function()? likeRemoved,
    TResult? Function(bool isBookmarked)? bookmarkStatus,
    TResult? Function(bool isLiked)? likeStatus,
    TResult? Function(int bookmarksCount, int likesCount)? stats,
  }) {
    return likeRemoved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult Function()? bookmarkAdded,
    TResult Function()? bookmarkRemoved,
    TResult Function()? likeAdded,
    TResult Function()? likeRemoved,
    TResult Function(bool isBookmarked)? bookmarkStatus,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(int bookmarksCount, int likesCount)? stats,
    required TResult orElse(),
  }) {
    if (likeRemoved != null) {
      return likeRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RecipesLoaded value) recipesLoaded,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_BookmarkRemoved value) bookmarkRemoved,
    required TResult Function(_LikeAdded value) likeAdded,
    required TResult Function(_LikeRemoved value) likeRemoved,
    required TResult Function(_BookmarkStatus value) bookmarkStatus,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_Stats value) stats,
  }) {
    return likeRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecipesLoaded value)? recipesLoaded,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult? Function(_LikeAdded value)? likeAdded,
    TResult? Function(_LikeRemoved value)? likeRemoved,
    TResult? Function(_BookmarkStatus value)? bookmarkStatus,
    TResult? Function(_LikeStatus value)? likeStatus,
    TResult? Function(_Stats value)? stats,
  }) {
    return likeRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RecipesLoaded value)? recipesLoaded,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult Function(_LikeAdded value)? likeAdded,
    TResult Function(_LikeRemoved value)? likeRemoved,
    TResult Function(_BookmarkStatus value)? bookmarkStatus,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_Stats value)? stats,
    required TResult orElse(),
  }) {
    if (likeRemoved != null) {
      return likeRemoved(this);
    }
    return orElse();
  }
}

abstract class _LikeRemoved implements RecipeState {
  const factory _LikeRemoved() = _$LikeRemovedImpl;
}

/// @nodoc
abstract class _$$BookmarkStatusImplCopyWith<$Res> {
  factory _$$BookmarkStatusImplCopyWith(_$BookmarkStatusImpl value,
          $Res Function(_$BookmarkStatusImpl) then) =
      __$$BookmarkStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isBookmarked});
}

/// @nodoc
class __$$BookmarkStatusImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$BookmarkStatusImpl>
    implements _$$BookmarkStatusImplCopyWith<$Res> {
  __$$BookmarkStatusImplCopyWithImpl(
      _$BookmarkStatusImpl _value, $Res Function(_$BookmarkStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBookmarked = null,
  }) {
    return _then(_$BookmarkStatusImpl(
      null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BookmarkStatusImpl implements _BookmarkStatus {
  const _$BookmarkStatusImpl(this.isBookmarked);

  @override
  final bool isBookmarked;

  @override
  String toString() {
    return 'RecipeState.bookmarkStatus(isBookmarked: $isBookmarked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkStatusImpl &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBookmarked);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkStatusImplCopyWith<_$BookmarkStatusImpl> get copyWith =>
      __$$BookmarkStatusImplCopyWithImpl<_$BookmarkStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RecipeModel> recipes) recipesLoaded,
    required TResult Function() bookmarkAdded,
    required TResult Function() bookmarkRemoved,
    required TResult Function() likeAdded,
    required TResult Function() likeRemoved,
    required TResult Function(bool isBookmarked) bookmarkStatus,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(int bookmarksCount, int likesCount) stats,
  }) {
    return bookmarkStatus(isBookmarked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult? Function()? bookmarkAdded,
    TResult? Function()? bookmarkRemoved,
    TResult? Function()? likeAdded,
    TResult? Function()? likeRemoved,
    TResult? Function(bool isBookmarked)? bookmarkStatus,
    TResult? Function(bool isLiked)? likeStatus,
    TResult? Function(int bookmarksCount, int likesCount)? stats,
  }) {
    return bookmarkStatus?.call(isBookmarked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult Function()? bookmarkAdded,
    TResult Function()? bookmarkRemoved,
    TResult Function()? likeAdded,
    TResult Function()? likeRemoved,
    TResult Function(bool isBookmarked)? bookmarkStatus,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(int bookmarksCount, int likesCount)? stats,
    required TResult orElse(),
  }) {
    if (bookmarkStatus != null) {
      return bookmarkStatus(isBookmarked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RecipesLoaded value) recipesLoaded,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_BookmarkRemoved value) bookmarkRemoved,
    required TResult Function(_LikeAdded value) likeAdded,
    required TResult Function(_LikeRemoved value) likeRemoved,
    required TResult Function(_BookmarkStatus value) bookmarkStatus,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_Stats value) stats,
  }) {
    return bookmarkStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecipesLoaded value)? recipesLoaded,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult? Function(_LikeAdded value)? likeAdded,
    TResult? Function(_LikeRemoved value)? likeRemoved,
    TResult? Function(_BookmarkStatus value)? bookmarkStatus,
    TResult? Function(_LikeStatus value)? likeStatus,
    TResult? Function(_Stats value)? stats,
  }) {
    return bookmarkStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RecipesLoaded value)? recipesLoaded,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult Function(_LikeAdded value)? likeAdded,
    TResult Function(_LikeRemoved value)? likeRemoved,
    TResult Function(_BookmarkStatus value)? bookmarkStatus,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_Stats value)? stats,
    required TResult orElse(),
  }) {
    if (bookmarkStatus != null) {
      return bookmarkStatus(this);
    }
    return orElse();
  }
}

abstract class _BookmarkStatus implements RecipeState {
  const factory _BookmarkStatus(final bool isBookmarked) = _$BookmarkStatusImpl;

  bool get isBookmarked;

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkStatusImplCopyWith<_$BookmarkStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeStatusImplCopyWith<$Res> {
  factory _$$LikeStatusImplCopyWith(
          _$LikeStatusImpl value, $Res Function(_$LikeStatusImpl) then) =
      __$$LikeStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLiked});
}

/// @nodoc
class __$$LikeStatusImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$LikeStatusImpl>
    implements _$$LikeStatusImplCopyWith<$Res> {
  __$$LikeStatusImplCopyWithImpl(
      _$LikeStatusImpl _value, $Res Function(_$LikeStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLiked = null,
  }) {
    return _then(_$LikeStatusImpl(
      null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LikeStatusImpl implements _LikeStatus {
  const _$LikeStatusImpl(this.isLiked);

  @override
  final bool isLiked;

  @override
  String toString() {
    return 'RecipeState.likeStatus(isLiked: $isLiked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeStatusImpl &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLiked);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeStatusImplCopyWith<_$LikeStatusImpl> get copyWith =>
      __$$LikeStatusImplCopyWithImpl<_$LikeStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RecipeModel> recipes) recipesLoaded,
    required TResult Function() bookmarkAdded,
    required TResult Function() bookmarkRemoved,
    required TResult Function() likeAdded,
    required TResult Function() likeRemoved,
    required TResult Function(bool isBookmarked) bookmarkStatus,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(int bookmarksCount, int likesCount) stats,
  }) {
    return likeStatus(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult? Function()? bookmarkAdded,
    TResult? Function()? bookmarkRemoved,
    TResult? Function()? likeAdded,
    TResult? Function()? likeRemoved,
    TResult? Function(bool isBookmarked)? bookmarkStatus,
    TResult? Function(bool isLiked)? likeStatus,
    TResult? Function(int bookmarksCount, int likesCount)? stats,
  }) {
    return likeStatus?.call(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult Function()? bookmarkAdded,
    TResult Function()? bookmarkRemoved,
    TResult Function()? likeAdded,
    TResult Function()? likeRemoved,
    TResult Function(bool isBookmarked)? bookmarkStatus,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(int bookmarksCount, int likesCount)? stats,
    required TResult orElse(),
  }) {
    if (likeStatus != null) {
      return likeStatus(isLiked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RecipesLoaded value) recipesLoaded,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_BookmarkRemoved value) bookmarkRemoved,
    required TResult Function(_LikeAdded value) likeAdded,
    required TResult Function(_LikeRemoved value) likeRemoved,
    required TResult Function(_BookmarkStatus value) bookmarkStatus,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_Stats value) stats,
  }) {
    return likeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecipesLoaded value)? recipesLoaded,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult? Function(_LikeAdded value)? likeAdded,
    TResult? Function(_LikeRemoved value)? likeRemoved,
    TResult? Function(_BookmarkStatus value)? bookmarkStatus,
    TResult? Function(_LikeStatus value)? likeStatus,
    TResult? Function(_Stats value)? stats,
  }) {
    return likeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RecipesLoaded value)? recipesLoaded,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult Function(_LikeAdded value)? likeAdded,
    TResult Function(_LikeRemoved value)? likeRemoved,
    TResult Function(_BookmarkStatus value)? bookmarkStatus,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_Stats value)? stats,
    required TResult orElse(),
  }) {
    if (likeStatus != null) {
      return likeStatus(this);
    }
    return orElse();
  }
}

abstract class _LikeStatus implements RecipeState {
  const factory _LikeStatus(final bool isLiked) = _$LikeStatusImpl;

  bool get isLiked;

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikeStatusImplCopyWith<_$LikeStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatsImplCopyWith<$Res> {
  factory _$$StatsImplCopyWith(
          _$StatsImpl value, $Res Function(_$StatsImpl) then) =
      __$$StatsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bookmarksCount, int likesCount});
}

/// @nodoc
class __$$StatsImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$StatsImpl>
    implements _$$StatsImplCopyWith<$Res> {
  __$$StatsImplCopyWithImpl(
      _$StatsImpl _value, $Res Function(_$StatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarksCount = null,
    Object? likesCount = null,
  }) {
    return _then(_$StatsImpl(
      null == bookmarksCount
          ? _value.bookmarksCount
          : bookmarksCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StatsImpl implements _Stats {
  const _$StatsImpl(this.bookmarksCount, this.likesCount);

  @override
  final int bookmarksCount;
  @override
  final int likesCount;

  @override
  String toString() {
    return 'RecipeState.stats(bookmarksCount: $bookmarksCount, likesCount: $likesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsImpl &&
            (identical(other.bookmarksCount, bookmarksCount) ||
                other.bookmarksCount == bookmarksCount) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookmarksCount, likesCount);

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      __$$StatsImplCopyWithImpl<_$StatsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RecipeModel> recipes) recipesLoaded,
    required TResult Function() bookmarkAdded,
    required TResult Function() bookmarkRemoved,
    required TResult Function() likeAdded,
    required TResult Function() likeRemoved,
    required TResult Function(bool isBookmarked) bookmarkStatus,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(int bookmarksCount, int likesCount) stats,
  }) {
    return stats(bookmarksCount, likesCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult? Function()? bookmarkAdded,
    TResult? Function()? bookmarkRemoved,
    TResult? Function()? likeAdded,
    TResult? Function()? likeRemoved,
    TResult? Function(bool isBookmarked)? bookmarkStatus,
    TResult? Function(bool isLiked)? likeStatus,
    TResult? Function(int bookmarksCount, int likesCount)? stats,
  }) {
    return stats?.call(bookmarksCount, likesCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RecipeModel> recipes)? recipesLoaded,
    TResult Function()? bookmarkAdded,
    TResult Function()? bookmarkRemoved,
    TResult Function()? likeAdded,
    TResult Function()? likeRemoved,
    TResult Function(bool isBookmarked)? bookmarkStatus,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(int bookmarksCount, int likesCount)? stats,
    required TResult orElse(),
  }) {
    if (stats != null) {
      return stats(bookmarksCount, likesCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RecipesLoaded value) recipesLoaded,
    required TResult Function(_BookmarkAdded value) bookmarkAdded,
    required TResult Function(_BookmarkRemoved value) bookmarkRemoved,
    required TResult Function(_LikeAdded value) likeAdded,
    required TResult Function(_LikeRemoved value) likeRemoved,
    required TResult Function(_BookmarkStatus value) bookmarkStatus,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_Stats value) stats,
  }) {
    return stats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecipesLoaded value)? recipesLoaded,
    TResult? Function(_BookmarkAdded value)? bookmarkAdded,
    TResult? Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult? Function(_LikeAdded value)? likeAdded,
    TResult? Function(_LikeRemoved value)? likeRemoved,
    TResult? Function(_BookmarkStatus value)? bookmarkStatus,
    TResult? Function(_LikeStatus value)? likeStatus,
    TResult? Function(_Stats value)? stats,
  }) {
    return stats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RecipesLoaded value)? recipesLoaded,
    TResult Function(_BookmarkAdded value)? bookmarkAdded,
    TResult Function(_BookmarkRemoved value)? bookmarkRemoved,
    TResult Function(_LikeAdded value)? likeAdded,
    TResult Function(_LikeRemoved value)? likeRemoved,
    TResult Function(_BookmarkStatus value)? bookmarkStatus,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_Stats value)? stats,
    required TResult orElse(),
  }) {
    if (stats != null) {
      return stats(this);
    }
    return orElse();
  }
}

abstract class _Stats implements RecipeState {
  const factory _Stats(final int bookmarksCount, final int likesCount) =
      _$StatsImpl;

  int get bookmarksCount;
  int get likesCount;

  /// Create a copy of RecipeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
