import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/view/cubits/theme_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSection(
            title: 'Appearance',
            children: [
              BlocBuilder<ThemeCubit, bool>(
                builder: (context, isDarkMode) {
                  return SwitchListTile(
                    title: Text(
                      'Dark Mode',
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    value: isDarkMode,
                    onChanged: (value) {
                      context.read<ThemeCubit>().toggleTheme();
                    },
                    activeColor: const Color(0xFF40CC92),
                  );
                },
              ),
            ],
          ),
          _buildSection(
            title: 'Notifications',
            children: [
              SwitchListTile(
                title: Text(
                  'Recipe Updates',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                value: true,
                onChanged: (value) {
                  // TODO: Implement notification settings
                },
                activeColor: const Color(0xFF40CC92),
              ),
              SwitchListTile(
                title: Text(
                  'New Features',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                value: true,
                onChanged: (value) {
                  // TODO: Implement notification settings
                },
                activeColor: const Color(0xFF40CC92),
              ),
            ],
          ),
          _buildSection(
            title: 'Account',
            children: [
              ListTile(
                title: Text(
                  'Email Preferences',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  // TODO: Implement email preferences
                },
              ),
              ListTile(
                title: Text(
                  'Privacy Settings',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  // TODO: Implement privacy settings
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF40CC92),
            ),
          ),
        ),
        ...children,
      ],
    );
  }
}
