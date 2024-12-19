// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:recipe/domain/entities/recipe.dart';
// import 'package:recipe/view/cubits/recipe_cubit.dart';
// import 'package:recipe/view/widgets/recipe_card.dart';

// class FavoriteRecipesScreen extends StatelessWidget {
//   const FavoriteRecipesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Favorite Recipes',
//           style: GoogleFonts.nunito(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: BlocBuilder<RecipeCubit, List<Recipe>>(
//         builder: (context, recipes) {
//           final favoriteRecipes = recipes.where((recipe) => recipe.isFavorite).toList();
          
//           if (favoriteRecipes.isEmpty) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(
//                     Icons.favorite_border,
//                     size: 64,
//                     color: Color(0xFF40CC92),
//                   ),
//                   const SizedBox(height: 16),
//                   Text(
//                     'No favorite recipes yet',
//                     style: GoogleFonts.nunito(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     'Start adding recipes to your favorites!',
//                     style: GoogleFonts.nunito(
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }

//           return GridView.builder(
//             padding: const EdgeInsets.all(16),
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 0.7,
//               crossAxisSpacing: 16,
//               mainAxisSpacing: 16,
//             ),
//             itemCount: favoriteRecipes.length,
//             itemBuilder: (context, index) {
//               return RecipeCard(recipe: favoriteRecipes[index], onTap: () {  },);
//             },
//           );
//         },
//       ),
//     );
//   }
// }
