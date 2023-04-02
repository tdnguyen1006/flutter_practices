import 'package:flutter/material.dart';
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
        "us",
        _isEn.toString(),
      ),
    );
    notifyListeners();
  }

  getLanguageFromStorage() async {
    String? english = await _storageService.readSecureData("en");
    _isEn = english != null ? english.toLowerCase() == "true" : false;
  }
}
