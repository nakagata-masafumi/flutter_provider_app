import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{

  String bodyString = 'What is Provider';

  void changeBodyString(){
    bodyString = 'This is Provider!!!!!';
    notifyListeners();
  }
}