import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  List<Map<String, Object>> _recetas = [];
  List<Map<String, Object>> get recetas => _recetas;

  void toggleFavorite(String receta) {
    final isExist = _recetas.contains(receta);
    if (isExist) {
      _recetas.remove(receta);
    } else {
      _recetas.add(receta as Map<String, Object>);
    }
    notifyListeners();
  }

  bool isExist(String receta) {
    final isExist = _recetas.contains(receta);
    return isExist;
  }

  void clearFavorite() {
    _recetas = [];
    notifyListeners();
  }
}
