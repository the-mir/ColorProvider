import 'package:flutter/material.dart';

class receiveData extends  ChangeNotifier{
  int _number=0;

  int get number => _number;

  void increment() {
    _number++;
    notifyListeners();
  }

    void deletNumber() {
    _number=0;
    notifyListeners();
  }
  void decrementNumber() {
    _number--;
    notifyListeners();
  }

}