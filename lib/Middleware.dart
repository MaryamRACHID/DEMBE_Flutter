import 'package:flutter/material.dart';

class AuthMiddleware {
  // Vérifier si l'utilisateur est déjà connecté
  static bool isLoggedIn = false; // Vous pouvez remplacer ceci par votre propre logique de vérification

  // Middleware pour vérifier si l'utilisateur est connecté avant d'accéder à une page
  static bool isAuthenticated(BuildContext context) {
    if (isLoggedIn) {
      Navigator.pushReplacementNamed(context, '/welcome');
      return false;
    }
    return true;
  }
}
