import 'package:flutter/material.dart';

class SaveGameLists with ChangeNotifier {

  List<List<String>> saveGameList = [];

  List<String> addList=[];

  void listAdd(addList) {
    saveGameList.add(addList);
    notifyListeners();
  }


}