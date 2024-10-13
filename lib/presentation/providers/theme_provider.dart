import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  final SharedPreferences _sharedPreferences;

  // Chave para salvar o tema no SharedPreferences
  static const String themeKey = 'theme_mode';

  ThemeProvider(this._sharedPreferences) {
    _loadThemeFromPreferences(); // Carrega o tema ao inicializar o app
  }

  // Alternar entre claro e escuro
  void toggleTheme() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
      _sharedPreferences.setString(
          themeKey, 'dark'); // Salva o tema no SharedPreferences
    } else {
      _themeMode = ThemeMode.light;
      _sharedPreferences.setString(
          themeKey, 'light'); // Salva o tema no SharedPreferences
    }
    notifyListeners();
  }

  // Carrega o tema salvo no SharedPreferences
  void _loadThemeFromPreferences() {
    final theme = _sharedPreferences.getString(themeKey);
    if (theme == 'dark') {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
  }

  bool isDarkMode() {
    return _themeMode == ThemeMode.dark;
  }
}
