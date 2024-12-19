import 'package:recipe/domain/entities/recipe.dart';

class RecipeModel extends Recipe {
  const RecipeModel({
    required super.id,
    required super.title,
    required super.description,
    required super.imageUrl,
    required super.ingredients,
    required super.instructions,
    required super.category,
    required super.prepTime,
    required super.cookTime,
    required super.servings,
    required super.nutrients,
    required super.userId,
    required super.createdAt,
    super.isFavorite,
  });

  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['image_url'] as String,
      ingredients: (json['ingredients'] as List).map((item) => 
        "${item['item']} ${item['amount']}${item['unit']}"
      ).toList(),
      instructions: (json['instructions'] as List).map((item) => 
        item['text'] as String
      ).toList(),
      category: json['category'] as String,
      prepTime: json['prep_time'] as int,
      cookTime: json['cook_time'] as int,
      servings: json['servings'] as int,
      nutrients: Map<String, double>.from(
        (json['nutrients'] as Map).map((key, value) => 
          MapEntry(key.toString(), (value as num).toDouble())
        )
      ),
      userId: json['user_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      isFavorite: json['is_favorite'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image_url': imageUrl,
      'ingredients': ingredients,
      'instructions': instructions,
      'category': category,
      'prep_time': prepTime,
      'cook_time': cookTime,
      'servings': servings,
      'nutrients': nutrients,
      'user_id': userId,
      'created_at': createdAt.toIso8601String(),
      'is_favorite': isFavorite,
    };
  }

  factory RecipeModel.fromEntity(Recipe recipe) {
    return RecipeModel(
      id: recipe.id,
      title: recipe.title,
      description: recipe.description,
      imageUrl: recipe.imageUrl,
      ingredients: recipe.ingredients,
      instructions: recipe.instructions,
      category: recipe.category,
      prepTime: recipe.prepTime,
      cookTime: recipe.cookTime,
      servings: recipe.servings,
      nutrients: recipe.nutrients,
      userId: recipe.userId,
      createdAt: recipe.createdAt,
      isFavorite: recipe.isFavorite,
    );
  }
}