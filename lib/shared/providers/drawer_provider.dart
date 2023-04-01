import 'package:flutter/material.dart';

class DrawerProvider with ChangeNotifier {
  late bool _isOpen;
  bool get isOpen => _isOpen;

  DrawerProvider() {
    _isOpen = true;
  }

  toggleDrawer() async {
    _isOpen = !_isOpen;
    notifyListeners();
  }
}
