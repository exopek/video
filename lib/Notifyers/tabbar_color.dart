import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbarColor extends ChangeNotifier{
  var _color1 = new List();
  var _color2 = new List();
  var _color3 = new List();
  bool _firstCall = false;
  final context;
  int _index = 0;

  TabbarColor({@required this.context});

  get index {
    return _index;
  }

   get tabColor1 {
     if (_firstCall == false) {
       return [Color.fromRGBO(19, 19, 19, 40), Color.fromRGBO(40, 40, 40, 40), Color.fromRGBO(5, 5, 5, 40)];
     }
    return _color1;
  }

   get tabColor2 {
     if (_firstCall == false) {
       return [Color.fromRGBO(19, 19, 19, 40), Colors.transparent, Colors.transparent];
     }
    return _color2;
  }

  get tabColor3 {
    if (_firstCall == false) {
      return [Color.fromRGBO(19, 19, 19, 40), Colors.transparent, Colors.transparent];
    }
    return _color3;
  }

  updateTabColor(int index, context) {
    if (index == 0) {
      _index = index;
      _firstCall = true;
      _color1 = [Color.fromRGBO(19, 19, 19, 40), Color.fromRGBO(40, 40, 40, 40), Color.fromRGBO(5, 5, 5, 40)];
      _color2 = [Color.fromRGBO(19, 19, 19, 40), Colors.transparent, Colors.transparent];
      _color3 = [Color.fromRGBO(19, 19, 19, 40), Colors.transparent, Colors.transparent];
    }
    else if (index == 1) {
      _index = index;
      _firstCall = true;
      _color1 = [Color.fromRGBO(19, 19, 19, 40), Colors.transparent, Colors.transparent];
      _color2 = [Color.fromRGBO(19, 19, 19, 40), Color.fromRGBO(40, 40, 40, 40), Color.fromRGBO(5, 5, 5, 40)];
      _color3 = [Color.fromRGBO(19, 19, 19, 40), Colors.transparent, Colors.transparent];
    }
    else if (index == 2) {
      _index = index;
      _firstCall = true;
      _color1 = [Color.fromRGBO(19, 19, 19, 40), Colors.transparent, Colors.transparent];
      _color2 = [Color.fromRGBO(19, 19, 19, 40), Colors.transparent, Colors.transparent];
      _color3 = [Color.fromRGBO(19, 19, 19, 40), Color.fromRGBO(40, 40, 40, 40), Color.fromRGBO(5, 5, 5, 40)];
    }
    notifyListeners();
  }
}