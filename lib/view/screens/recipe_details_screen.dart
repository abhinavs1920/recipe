import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/view/cubits/recipe_cubit.dart';
import 'package:recipe/view/cubits/recipe_state.dart';

class RecipeDetailsScreen extends StatefulWidget {
  const RecipeDetailsScreen({Key? key}) : super(key: key);

  @override
  State<RecipeDetailsScreen> createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {
  bool _isBookmarked = false;
  bool _isLiked = false;
  bool _isIngredientsExpanded = true;
  bool _isNutrientsExpanded = true;

  @override
  Widget build(BuildContext context) {
    final recipe = context.read<RecipeCubit>().selectedRecipe;
    if (recipe == null) {
      return const Scaffold(
        body: Center(child: Text('No recipe selected')),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/butter-chicken.png',
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).padding.top + 16,
                  left: 16,
                  right: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCircularButton(
                        icon: Icons.arrow_back,
                        onTap: () => Navigator.pop(context),
                      ),
                      Row(
                        children: [
                          _buildCircularButton(
                            icon: _isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                            onTap: () => setState(() => _isBookmarked = !_isBookmarked),
                          ),
                          const SizedBox(width: 8),
                          _buildCircularButton(
                            icon: _isLiked ? Icons.favorite : Icons.favorite_border,
                            onTap: () => setState(() => _isLiked = !_isLiked),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.title,
                    style: GoogleFonts.nunito(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF0B2634),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 25),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD7FFEE),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      recipe.description,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Category: ',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Frozen Desserts',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildInfoCard(title: '${recipe.cookTime}h', subtitle: 'Cook Time'),
                          SizedBox(height: 16),
                          _buildInfoCard(title: '${recipe.prepTime}m', subtitle: 'Prep Time'),
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildInfoCard(title: '${recipe.ingredients.length}', subtitle: 'Ingredients'),
                          SizedBox(height: 16),
                          _buildInfoCard(title: '${recipe.instructions.length}', subtitle: 'Steps'),
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildInfoCard(title: '~${recipe.cookTime + recipe.prepTime}h', subtitle: 'Total Time'),
                          SizedBox(height: 16),
                          _buildInfoCard(title: '${recipe.servings}', subtitle: 'Servings'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD7FFEE),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ingredients',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF0B2634),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Wrap(
                          spacing: 14,
                          runSpacing: 8,
                          children: recipe.ingredients.map((ingredient) {
                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF0B2634),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Text(
                                  ingredient,
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF0B2634),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD7FFEE),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Instructions',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF0B2634),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ...recipe.instructions.asMap().entries.map((entry) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${entry.key + 1}',
                                      style: GoogleFonts.nunito(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    entry.value,
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: const Color(0xFF0B2634),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircularButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        icon: Icon(icon),
        onPressed: onTap,
        color: const Color(0xFF0B2634),
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required String subtitle,
  }) {
    return Container(
      width: 90,
      height: 90,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFD7FFEE),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF0B2634),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: GoogleFonts.nunito(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF0B2634),
            ),
          ),
        ],
      ),
    );
  }
}