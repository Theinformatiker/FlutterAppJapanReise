import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:japanreise/Pages/event_pages/festival.dart';

class CartModel extends ChangeNotifier {
  int nudelsuppe = 0;
  int festival = 0;
  double nudelPreis = 18;
  double festivalPreis = 49;
  int get totalItems => nudelsuppe + festival;
  double get gesamtpreis => nudelsuppe * nudelPreis + festival * festivalPreis;
  void addNudellSuppe() {
    nudelsuppe++;
    notifyListeners();
  }

  void clearNudelsuooe() {
    nudelsuppe = 0;
    notifyListeners();
  }

  void removeNudellSuppe() {
    if (nudelsuppe > 0) {
      nudelsuppe--;
      notifyListeners();
    }
  }

  void addFestival() {
    festival++;
    notifyListeners();
  }

  void clearfestival() {
    festival = 0;
    notifyListeners();
  }

  void removeFestival() {
    if (festival > 0) {
      festival--;
      notifyListeners();
    }
  }
}
