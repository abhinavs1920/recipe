import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/core/utils/logger.dart';
import 'package:recipe/view/cubits/auth_cubit.dart';
import 'package:recipe/view/cubits/auth_state.dart';

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
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  'Profile',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      logger.i('Logout button pressed');
                      context.read<AuthCubit>().signOut();
                    },
                    icon: const Icon(Icons.logout),
                  ),
                ],
              ),
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: user.avatarUrl != null
                          ? NetworkImage(user.avatarUrl!)
                          : null,
                      child: user.avatarUrl == null
                          ? Text(
                              user.name?[0].toUpperCase() ?? user.email![0].toUpperCase(),
                              style: const TextStyle(fontSize: 32),
                            )
                          : null,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      user.name ?? 'User',
                      style: GoogleFonts.nunito(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      user.email!,
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 32),
                    _buildProfileSection(
                      title: 'Account Information',
                      children: [
                        _buildInfoTile(
                          icon: Icons.calendar_today,
                          title: 'Member Since',
                          subtitle: _formatDate(user.createdAt),
                        ),
                        _buildInfoTile(
                          icon: Icons.access_time,
                          title: 'Last Login',
                          subtitle: _formatDate(user.updatedAt),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    _buildProfileSection(
                      title: 'App Settings',
                      children: [
                        _buildSettingsTile(
                          icon: Icons.notifications,
                          title: 'Notifications',
                          onTap: () {
                            logger.i('Notifications settings tapped');
                          },
                        ),
                        _buildSettingsTile(
                          icon: Icons.language,
                          title: 'Language',
                          onTap: () {
                            logger.i('Language settings tapped');
                          },
                        ),
                        _buildSettingsTile(
                          icon: Icons.dark_mode,
                          title: 'Dark Mode',
                          onTap: () {
                            logger.i('Dark mode settings tapped');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          orElse: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget _buildProfileSection({
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Card(
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF4CAF50)),
      title: Text(
        title,
        style: GoogleFonts.nunito(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.nunito(),
      ),
    );
  }

  Widget _buildSettingsTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF4CAF50)),
      title: Text(
        title,
        style: GoogleFonts.nunito(fontWeight: FontWeight.w600),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
} 