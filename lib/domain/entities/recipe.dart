import 'package:equatable/equatable.dart';

class Recipe extends Equatable {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> instructions;
  final String category;
  final int prepTime;
  final int cookTime;
  final int servings;
  final Map<String, double> nutrients;
  final String userId;
  final DateTime createdAt;
  final bool isFavorite;

  const Recipe({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.ingredients,
    required this.instructions,
    required this.category,
    required this.prepTime,
    required this.cookTime,
    required this.servings,
    required this.nutrients,
    required this.userId,
    required this.createdAt,
    this.isFavorite = false,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        imageUrl,
        ingredients,
        instructions,
        category,
        prepTime,
        cookTime,
        servings,
        nutrients,
        userId,
        createdAt,
        isFavorite,
      ];

  Recipe copyWith({
    String? id,
    String? title,
    String? description,
    String? imageUrl,
    List<String>? ingredients,
    List<String>? instructions,
    String? category,
    int? prepTime,
    int? cookTime,
    int? servings,
    Map<String, double>? nutrients,
    String? userId,
    DateTime? createdAt,
    bool? isFavorite,
  }) {
    return Recipe(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      ingredients: ingredients ?? this.ingredients,
      instructions: instructions ?? this.instructions,
      category: category ?? this.category,
      prepTime: prepTime ?? this.prepTime,
      cookTime: cookTime ?? this.cookTime,
      servings: servings ?? this.servings,
      nutrients: nutrients ?? this.nutrients,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
} 