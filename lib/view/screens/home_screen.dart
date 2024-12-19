import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/core/utils/logger.dart';
import 'package:recipe/data/models/recipe_model.dart';
import 'package:recipe/view/cubits/recipe_cubit.dart';
import 'package:recipe/view/cubits/recipe_state.dart';
import 'package:recipe/view/widgets/error_display.dart';
import 'package:recipe/view/widgets/loading_indicator.dart';
import 'package:recipe/view/widgets/recipe_card.dart';
import 'package:recipe/view/widgets/search_filters.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _loadRecipes();
  }

  Future<void> _loadRecipes() async {
    logger.i('Loading recipes');
    context.read<RecipeCubit>().fetchRecipes();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _loadRecipes,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header with Good Morning
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              color: Colors.teal,
                            ),
                          ),
                          Text(
                            'Priyanshu',
                            style: GoogleFonts.nunito(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.teal,
                            width: 2,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://example.com/avatar.jpg', // Replace with actual avatar URL
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  
                  // Search Filters
                  const SearchFilters(),
                  const SizedBox(height: 32),

                  // Some Recipes
                  Text(
                    'Some Recipes',
                    style: GoogleFonts.nunito(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<RecipeCubit, RecipeState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => const LoadingIndicator(),
                        loading: () => const LoadingIndicator(),
                        error: (message) => ErrorDisplay(
                          message: message,
                          onRetry: _loadRecipes,
                        ),
                        recipesLoaded: (recipes) => Column(
                          children: recipes.map((recipe) {
                            return RecipeCard(
                              recipe: recipe,
                              onTap: () {
                                logger.i('Recipe tapped: ${recipe.title}');
                                // Navigate to recipe details
                              },
                              isBookmarked: false, // TODO: Implement bookmark status
                            );
                          }).toList(),
                        ),
                        bookmarkAdded: () => const SizedBox(),
                        bookmarkRemoved: () => const SizedBox(),
                        likeAdded: () => const SizedBox(),
                        likeRemoved: () => const SizedBox(),
                        bookmarkStatus: (_) => const SizedBox(),
                        likeStatus: (_) => const SizedBox(),
                        stats: (_, __) => const SizedBox(),
                      );
                    },
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Popular Recipes
                  Text(
                    'Popular Recipes',
                    style: GoogleFonts.nunito(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<RecipeCubit, RecipeState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => const LoadingIndicator(),
                        loading: () => const LoadingIndicator(),
                        error: (message) => ErrorDisplay(
                          message: message,
                          onRetry: _loadRecipes,
                        ),
                        recipesLoaded: (recipes) => Column(
                          children: recipes.take(2).map((recipe) {
                            return RecipeCard(
                              recipe: recipe,
                              onTap: () {
                                logger.i('Recipe tapped: ${recipe.title}');
                                // Navigate to recipe details
                              },
                              isBookmarked: false,
                            );
                          }).toList(),
                        ),
                        bookmarkAdded: () => const SizedBox(),
                        bookmarkRemoved: () => const SizedBox(),
                        likeAdded: () => const SizedBox(),
                        likeRemoved: () => const SizedBox(),
                        bookmarkStatus: (_) => const SizedBox(),
                        likeStatus: (_) => const SizedBox(),
                        stats: (_, __) => const SizedBox(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}