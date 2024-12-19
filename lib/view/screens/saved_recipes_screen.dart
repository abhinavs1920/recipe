// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:recipe/view/cubits/recipe_cubit.dart';
// import 'package:recipe/view/widgets/recipe_card.dart';

// class SavedRecipesScreen extends StatelessWidget {
//   const SavedRecipesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Saved Recipes',
//           style: GoogleFonts.nunito(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: BlocBuilder<RecipeCubit, List<Recipe>>(
//         builder: (context, recipes) {
//           final savedRecipes = recipes.where((recipe) => recipe.isSaved).toList();
          
//           if (savedRecipes.isEmpty) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(
//                     Icons.bookmark_border,
//                     size: 64,
//                     color: Color(0xFF40CC92),
//                   ),
//                   const SizedBox(height: 16),
//                   Text(
//                     'No saved recipes yet',
//                     style: GoogleFonts.nunito(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     'Start saving your favorite recipes!',
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
//             itemCount: savedRecipes.length,
//             itemBuilder: (context, index) {
//               return RecipeCard(recipe: savedRecipes[index]);
//             },
//           );
//         },
//       ),
//     );
//   }
// }
