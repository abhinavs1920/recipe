import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/view/cubits/auth_cubit.dart';
import 'package:recipe/view/cubits/auth_state.dart';
import 'package:recipe/view/cubits/theme_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward();

    // Check auth status after animation
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        context.read<AuthCubit>().checkAuthStatus();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (user) {
            Navigator.pushReplacementNamed(context, '/home');
          },
          unauthenticated: () {
            Navigator.pushReplacementNamed(context, '/login');
          },
          orElse: () {},
        );
      },
      child: BlocBuilder<ThemeCubit, bool>(
        builder: (context, isDarkMode) {
          return Scaffold(
            backgroundColor: isDarkMode ? const Color(0xFF1A1A1A) : Colors.white,
            body: Center(
              child: FadeTransition(
                opacity: _animation,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 150,
                      height: 150,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Recipe App',
                      style: GoogleFonts.nunito(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF40CC92),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}