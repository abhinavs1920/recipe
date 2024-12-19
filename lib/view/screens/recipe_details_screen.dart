import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/view/cubits/recipe_cubit.dart';
import 'package:recipe/view/cubits/recipe_state.dart';

class RecipeDetailsScreen extends StatefulWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final List<String> ingredients;
  final Map<String, double> nutrients;
  final int cookTime;
  final int prepTime;
  final int totalTime;
  final int servings;
  final int steps;
  final List<String> instructions;

  const RecipeDetailsScreen({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.ingredients,
    required this.nutrients,
    required this.cookTime,
    required this.prepTime,
    required this.totalTime,
    required this.servings,
    required this.steps,
    required this.instructions,
  });

  @override
  State<RecipeDetailsScreen> createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {
  bool _isBookmarked = false;
  bool _isLiked = false;
  int _bookmarksCount = 0;
  int _likesCount = 0;
  bool _isIngredientsExpanded = true;
  bool _isNutrientsExpanded = true;

  @override
  void initState() {
    super.initState();
    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    final cubit = context.read<RecipeCubit>();
    await cubit.checkBookmarkStatus(widget.id);
    await cubit.checkLikeStatus(widget.id);
    await cubit.getRecipeStats(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RecipeCubit, RecipeState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
          recipesLoaded: (recipes) {},
          bookmarkAdded: () {
            setState(() {
              _isBookmarked = true;
              _bookmarksCount++;
            });
          },
          bookmarkRemoved: () {
            setState(() {
              _isBookmarked = false;
              _bookmarksCount--;
            });
          },
          likeAdded: () {
            setState(() {
              _isLiked = true;
              _likesCount++;
            });
          },
          likeRemoved: () {
            setState(() {
              _isLiked = false;
              _likesCount--;
            });
          },
          bookmarkStatus: (isBookmarked) {
            setState(() {
              _isBookmarked = isBookmarked;
            });
          },
          likeStatus: (isLiked) {
            setState(() {
              _isLiked = isLiked;
            });
          },
          stats: (bookmarksCount, likesCount) {
            setState(() {
              _bookmarksCount = bookmarksCount;
              _likesCount = likesCount;
            });
          },
        );
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Recipe Image and Header
              Stack(
                children: [
                  // Recipe Image
                  Image.network(
                    widget.imageUrl,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  // Back Button and Actions
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
                              icon: _isBookmarked
                                  ? Icons.bookmark
                                  : Icons.bookmark_border,
                              onTap: () {
                                context.read<RecipeCubit>().toggleBookmark(widget.id);
                              },
                            ),
                            const SizedBox(width: 8),
                            _buildCircularButton(
                              icon: _isLiked
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              onTap: () {
                                context.read<RecipeCubit>().toggleLike(widget.id);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      widget.title,
                      style: GoogleFonts.nunito(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Description
                    Text(
                      widget.description,
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Recipe Info Cards
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildInfoCard(
                          title: '${widget.cookTime}h',
                          subtitle: 'Cook Time',
                        ),
                        _buildInfoCard(
                          title: '${widget.prepTime}m',
                          subtitle: 'Prep Time',
                        ),
                        _buildInfoCard(
                          title: '~${widget.totalTime}h',
                          subtitle: 'Total Time',
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildInfoCard(
                          title: widget.ingredients.length.toString(),
                          subtitle: 'Ingredients',
                        ),
                        _buildInfoCard(
                          title: widget.steps.toString(),
                          subtitle: 'Steps',
                        ),
                        _buildInfoCard(
                          title: '${widget.servings}.0',
                          subtitle: 'Servings',
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Ingredients Section
                    _buildExpandableSection(
                      title: 'Ingredient',
                      isExpanded: _isIngredientsExpanded,
                      onToggle: () {
                        setState(() {
                          _isIngredientsExpanded = !_isIngredientsExpanded;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: widget.ingredients
                            .map((ingredient) => Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    '• $ingredient',
                                    style: GoogleFonts.nunito(fontSize: 14),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Nutrients Section
                    _buildExpandableSection(
                      title: 'Nutrients Chart',
                      isExpanded: _isNutrientsExpanded,
                      onToggle: () {
                        setState(() {
                          _isNutrientsExpanded = !_isNutrientsExpanded;
                        });
                      },
                      child: Column(
                        children: widget.nutrients.entries.map((entry) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  entry.key,
                                  style: GoogleFonts.nunito(fontSize: 14),
                                ),
                                Text(
                                  '${entry.value}',
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Instructions Section
                    Text(
                      'Instructions',
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: widget.instructions.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF4CAF50),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    '${index + 1}',
                                    style: GoogleFonts.nunito(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  widget.instructions[index],
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCircularButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Icon(icon),
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F5E9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF4CAF50),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: GoogleFonts.nunito(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpandableSection({
    required String title,
    required Widget child,
    required bool isExpanded,
    required VoidCallback onToggle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onToggle,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                color: const Color(0xFF4CAF50),
              ),
            ],
          ),
        ),
        if (isExpanded) ...[
          const SizedBox(height: 16),
          child,
        ],
      ],
    );
  }
} 