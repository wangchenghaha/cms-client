
import 'package:flutter/foundation.dart';

class HomeSelectIndexModel extends ChangeNotifier {
  int homeSelectIndex = 0;

  void changeHomeSelectIndex(index){
    homeSelectIndex = index;
    notifyListeners();
  }
}