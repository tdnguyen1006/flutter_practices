import 'package:flutter/material.dart';

class DrawerProvider with ChangeNotifier {
  late bool _isOpen;
  late bool _isExtended;
  late int _selectedIndex;
  bool get isOpen => _isOpen;
  bool get isExtended => _isExtended;
  int get selectedIndex => _selectedIndex;

  DrawerProvider() {
    _isOpen = true;
    _selectedIndex = 0;
    _isExtended = true;
  }

  toggleDrawer() async {
    _isOpen = !_isOpen;
    _isExtended = !_isExtended;
    notifyListeners();
  }

  destinationIndex(index) async {
    _selectedIndex = index;
    notifyListeners();
  }
}
