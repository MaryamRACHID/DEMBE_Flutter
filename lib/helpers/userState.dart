import 'package:flutter/material.dart';

class UserState extends ChangeNotifier {
  String? userRole; // Utilisez String? si la valeur peut être nulle

  void setUserRole(String role) {
    userRole = role;
    notifyListeners();
  }

  void clearUserRole() {
    userRole = null;
    notifyListeners();
  }
}
