
import 'package:flutter/foundation.dart';

class DarenModel extends ChangeNotifier {
  bool isDaren = false;

  void changeToDaren(){
    isDaren = true;
    notifyListeners();
  }

}