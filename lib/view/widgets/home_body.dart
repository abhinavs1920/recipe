import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/core/utils/logger.dart';
import 'package:recipe/view/cubits/recipe_cubit.dart';
import 'package:recipe/view/cubits/recipe_state.dart';
import 'package:recipe/view/screens/recipe_details_screen.dart';
import 'package:recipe/view/widgets/error_display.dart';
import 'package:recipe/view/widgets/loading_indicator.dart';
import 'package:recipe/view/widgets/recipe_card.dart';
import 'package:recipe/view/widgets/search_filters.dart';

class HomeBody extends StatelessWidget {
  final VoidCallback onRefresh;

  const HomeBody({
    super.key,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchFilters(),
        const SizedBox(height: 32),
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
                onRetry: onRefresh,
              ),
              recipesLoaded: (recipes) => SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recipes.length,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemBuilder: (context, index) {
                    final recipe = recipes[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: SizedBox(
                        width: 230,
                        child: RecipeCard(
                          recipe: recipe,
                          isBookmarked: false,
                          onTap: () { 
                            context.read<RecipeCubit>().setSelectedRecipe(recipe);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RecipeDetailsScreen(),
                              ),
                            );
                           },
                        ),
                      ),
                    );
                  },
                ),
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
    );
  }
}
