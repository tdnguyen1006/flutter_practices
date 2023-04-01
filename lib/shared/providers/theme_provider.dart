import 'package:flutter/material.dart';
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
        "darkMode",
        _isDark.toString(),
      ),
    );
    notifyListeners();
  }

  getDarkThemeFromStorage() async {
    String? darkMode = await _storageService.readSecureData("darkMode");
    _isDark = darkMode != null ? darkMode.toLowerCase() == "true" : false;
  }
}
