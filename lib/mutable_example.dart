import 'package:flutter/cupertino.dart';

class MyChangeNotifier extends ChangeNotifier {
  int field1;
  String field2;

  void changeState() {
    field2 = 'New value';
    notifyListeners();
  }
}