import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/core/utils/logger.dart';
import 'package:recipe/view/cubits/auth_cubit.dart';
import 'package:recipe/view/cubits/auth_state.dart';
import 'package:recipe/view/cubits/theme_cubit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          unauthenticated: () {
            logger.i('User logged out, navigating to login screen');
            Navigator.pushReplacementNamed(context, '/login');
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          authenticated: (user) {
            logger.i('Building profile screen for user: ${user.email}');
            return BlocBuilder<ThemeCubit, bool>(
              builder: (context, isDarkMode) {
                return Scaffold(
                  backgroundColor: Colors.white,
                  body: SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          const SizedBox(height: 71),
                          // Profile Image
                          Container(
                            width: 248,
                            height: 248,
                            decoration: ShapeDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment(0.71, 0.71),
                                end: Alignment(-0.71, -0.71),
                                colors: [Color(0xFF1FA484), Color(0xFF48D89E)],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(34),
                                side: const BorderSide(width: 8, color: Color(0xFFB3F1D8)),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(34),
                              child: user.avatarUrl != null
                                ? Image.network(
                                    user.avatarUrl!,
                                    fit: BoxFit.cover,
                                  )
                                : Center(
                                    child: Text(
                                      user.name?[0].toUpperCase() ?? user.email![0].toUpperCase(),
                                      style: GoogleFonts.nunito(
                                        fontSize: 64,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                            ),
                          ),
                          const SizedBox(height: 54),
                          // User Info
                          Text(
                            user.name ?? 'User',
                            style: GoogleFonts.nunito(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF0B2634),
                            ),
                          ),
                          const SizedBox(height: 19),
                          Text(
                            '@${user.email?.split('@')[0] ?? 'user'}',
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF888888),
                            ),
                          ),
                          const SizedBox(height: 19),
                          // Social Icons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Image.asset('assets/icons/google.png', width: 18, height: 18),
                                onPressed: () {
                                  // Handle Google account linking
                                  logger.i('Google account linking pressed');
                                },
                              ),
                              const SizedBox(width: 8),
                              IconButton(
                                icon: Image.asset('assets/icons/settings.png', width: 18, height: 18),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/settings');
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          // Stats
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildStatItem(
                                icon: Icons.bookmark_border,
                                count: '12',
                                onTap: () {
                                  Navigator.pushNamed(context, '/saved-recipes');
                                },
                              ),
                              const SizedBox(width: 30),
                              _buildStatItem(
                                icon: Icons.favorite_border,
                                count: '12',
                                onTap: () {
                                  Navigator.pushNamed(context, '/favorite-recipes');
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 44),
                          // Menu Items
                          _buildMenuItem(
                            title: 'Dark Mode',
                            trailing: Switch(
                              value: isDarkMode,
                              onChanged: (value) {
                                context.read<ThemeCubit>().toggleTheme();
                              },
                              activeColor: const Color(0xFF40CC92),
                              inactiveTrackColor: const Color(0xFFE6E0E9),
                            ),
                          ),
                          _buildMenuItem(
                            title: 'Log Out',
                            onTap: () {
                              logger.i('Logout pressed');
                              context.read<AuthCubit>().signOut();
                            },
                          ),
                          _buildMenuItem(
                            title: 'Grocery List',
                            onTap: () {
                              Navigator.pushNamed(context, '/grocery-list');
                            },
                          ),
                          _buildMenuItem(
                            title: 'Settings',
                            onTap: () {
                              Navigator.pushNamed(context, '/settings');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          orElse: () => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }

  Widget _buildStatItem({
    required IconData icon,
    required String count,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: const Color(0xFF40CC92)),
            const SizedBox(width: 8),
            Text(
              count,
              style: GoogleFonts.nunito(
                fontSize: 23,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF40CC92),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required String title,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return Container(
      width: double.infinity,
      height: 76,
      margin: const EdgeInsets.only(bottom: 1),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFB3F1D8)),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.nunito(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF0B2634),
              ),
            ),
            trailing ?? const Icon(
              Icons.chevron_right,
              color: Color(0xFF40CC92),
            ),
          ],
        ),
      ),
    );
  }
}