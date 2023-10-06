import 'package:flutter/material.dart';
import 'package:happyproertiesq/models/portfolioproperty_model.dart';
import 'package:happyproertiesq/models/property_model.dart';

class FavoritesProvider extends ChangeNotifier {
  List<PropertyModel> favorites = [];

  void toggleFavorite(PropertyModel property) {
    if (property.isFavorite) {
      favorites.remove(property);
    } else {
      favorites.add(property);
    }
    property.isFavorite = !property.isFavorite;
    notifyListeners();
  }
}
