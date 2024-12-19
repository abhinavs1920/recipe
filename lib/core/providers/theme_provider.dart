import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  final SharedPreferences prefs;
  static const String _isDarkModeKey = 'isDarkMode';

  ThemeProvider(this.prefs) {
    _isDarkMode = prefs.getBool(_isDarkModeKey) ?? false;
  }

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;

  Future<void> toggleTheme() async {
    _isDarkMode = !_isDarkMode;
    await prefs.setBool(_isDarkModeKey, _isDarkMode);
    notifyListeners();
  }
} 