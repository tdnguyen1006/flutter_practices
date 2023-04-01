import 'package:flutter/material.dart';
import 'package:flutter_practices/shared/models/storage_model.dart';
import 'package:flutter_practices/shared/services/storage_service.dart';

class LanguageProvider with ChangeNotifier {
  late bool _isUs;
  bool get isUs => _isUs;
  final StorageService _storageService = StorageService();
  LanguageProvider() {
    _isUs = true;
    getLanguageFromStorage();
  }

  changeLanguage() async {
    _isUs = !_isUs;
    await _storageService.writeSecureData(
      StorageItem(
        "us",
        _isUs.toString(),
      ),
    );
    notifyListeners();
  }

  getLanguageFromStorage() async {
    String? english = await _storageService.readSecureData("us");
    _isUs = english != null ? english.toLowerCase() == "true" : false;
  }
}
