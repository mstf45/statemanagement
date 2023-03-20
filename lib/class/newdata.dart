import 'package:flutter/cupertino.dart';

class StateData with ChangeNotifier {
  String sehir = 'Manisa';

  void newCity(String city) {
    sehir = city;
    notifyListeners();
  }
}
