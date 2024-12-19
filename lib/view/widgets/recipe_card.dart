import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/data/models/recipe_model.dart';

class RecipeCard extends StatelessWidget {
  final RecipeModel recipe;
  final VoidCallback onTap;
  final bool isBookmarked;

  const RecipeCard({
    super.key,
    required this.recipe,
    required this.onTap,
    this.isBookmarked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'recipe-${recipe.id}',
      child: AspectRatio(
        aspectRatio: 1 / 1.3,
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: Image.asset('assets/images/butter-chicken.png').image,
              fit: BoxFit.cover,
            ),
            gradient: LinearGradient(
              begin: const Alignment(-0.00, -1.00),
              end: const Alignment(0, 1),
              colors: [
                Colors.black.withOpacity(0.63),
                Colors.black.withOpacity(0),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: ShapeDecoration(
                            color: const Color(0x70AAAAAA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            recipe.category,
                            style: GoogleFonts.nunito(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        if (isBookmarked)
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: const Color(0x70AAAAAA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Icon(
                              Icons.bookmark,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      decoration: ShapeDecoration(
                        color: const Color(0x70242424),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            recipe.title,
                            style: GoogleFonts.nunito(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Text(
                                '${recipe.cookTime} Min',
                                style: GoogleFonts.nunito(
                                  color: const Color(0xFF888888),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '|',
                                style: GoogleFonts.nunito(
                                  color: const Color(0xFF888888),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '${recipe.servings} Serve',
                                style: GoogleFonts.nunito(
                                  color: const Color(0xFF888888),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}