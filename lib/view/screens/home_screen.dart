import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/core/utils/logger.dart';
import 'package:recipe/view/cubits/recipe_cubit.dart';
import 'package:recipe/view/widgets/home_header.dart';
import 'package:recipe/view/widgets/home_body.dart';
import 'package:recipe/view/widgets/home_footer.dart';

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
                  const HomeHeader(),
                  const SizedBox(height: 24),
                  HomeBody(onRefresh: _loadRecipes),
                  const SizedBox(height: 32),
                  HomeFooter(onRefresh: _loadRecipes),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}