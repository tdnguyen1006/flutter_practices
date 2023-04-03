import 'package:flutter/material.dart';
import 'package:flutter_practices/shared/const/const.dart';
import 'package:flutter_practices/shared/models/storage_model.dart';
import 'package:flutter_practices/shared/services/storage_service.dart';

class LanguageProvider with ChangeNotifier {
  late bool _isEn;
  bool get isEn => _isEn;
  final StorageService _storageService = StorageService();
  LanguageProvider() {
    _isEn = true;
    getLanguageFromStorage();
  }

  changeLanguage() async {
    _isEn = !_isEn;
    await _storageService.writeSecureData(
      StorageItem(
        languageKey,
        _isEn.toString(),
      ),
    );
    notifyListeners();
  }

  getLanguageFromStorage() async {
    if (await _storageService.containsKeyInSecureData(languageKey)) {
      String? eng = await _storageService.readSecureData(languageKey);
      if (eng != null) {
        if (eng.toLowerCase() == "true") {
          _isEn = true;
        } else {
          _isEn = false;
        }
      }
    }
    notifyListeners();
  }
}
