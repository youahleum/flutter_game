import 'package:flutter/material.dart';

class SaveGameLists with ChangeNotifier {

  List<List<String>> saveGameList = [];
  List<String> winnerList=[];

  List<String> addList=[];
  String winner='';

  void listAdd(addList,winner) {
    saveGameList.add(addList);
    winnerList.add(winner);
    notifyListeners();
  }


}