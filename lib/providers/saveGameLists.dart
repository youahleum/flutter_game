import 'package:flutter/material.dart';

class SaveGameLists with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  List<List<String>> saveGameList = [];

  void listAdd() {
    _count++;
    notifyListeners();
  }

  // void remove() {
  //   _count--;
  //   notifyListeners();
  // }
}