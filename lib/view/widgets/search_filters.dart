import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchFilters extends StatelessWidget {
  const SearchFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(
        minHeight: 160,
      ),
      padding: const EdgeInsets.all(20),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.01, -1.00),
          end: const Alignment(-0.01, 1),
          colors: [const Color(0xFF18A66C), Colors.black.withOpacity(0.7)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Make most of What you Have',
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'search Recipes by',
            style: GoogleFonts.nunito(
              color: const Color(0xFFB0B0B0),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 10,
            runSpacing: 8,
            children: [
              _FilterChip(label: 'Ingredients'),
              _FilterChip(label: 'Cook Time'),
              _FilterChip(label: 'Prep Time'),
              _FilterChip(label: 'Total Ingredients'),
              _FilterChip(label: 'Total Steps'),
              _FilterChip(label: 'More...'),
            ],
          ),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;

  const _FilterChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: ShapeDecoration(
        color: const Color(0x70AAAAAA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
      ),
      child: Text(
        label,
        style: GoogleFonts.nunito(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
