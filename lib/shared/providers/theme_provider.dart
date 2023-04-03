import 'package:flutter/material.dart';
import 'package:flutter_practices/shared/const/const.dart';
import 'package:flutter_practices/shared/models/storage_model.dart';
import 'package:flutter_practices/shared/services/storage_service.dart';

class ThemeProvider with ChangeNotifier {
  late bool _isDark;
  bool get isDark => _isDark;
  final StorageService _storageService = StorageService();
  ThemeProvider() {
    _isDark = true;
    getDarkThemeFromStorage();
  }

  changeTheme() async {
    _isDark = !_isDark;
    await _storageService.writeSecureData(
      StorageItem(
        themeKey,
        _isDark.toString(),
      ),
    );
    notifyListeners();
  }

  getDarkThemeFromStorage() async {
    if (await _storageService.containsKeyInSecureData(themeKey)) {
      String? darkMode = await _storageService.readSecureData(themeKey);
      if (darkMode != null) {
        if (darkMode.toLowerCase() == "true") {
          _isDark = true;
        } else {
          _isDark = false;
        }
      }
    }
    notifyListeners();
  }
}
