import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/core/utils/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<bool> {
  static const String _themeKey = 'isDarkMode';
  final SharedPreferences _prefs;

  ThemeCubit(this._prefs) : super(_prefs.getBool(_themeKey) ?? false) {
    logger.i('ThemeCubit initialized with dark mode: $state');
  }

  void toggleTheme() {
    final newState = !state;
    _prefs.setBool(_themeKey, newState);
    logger.i('Theme toggled to dark mode: $newState');
    emit(newState);
  }

  bool get isDarkMode => state;
}
