import 'package:jwt_decoder/jwt_decoder.dart'; // Importez les dépendances nécessaires

List<String> getUserRolesFromToken(String jwtToken) {
  Map<String, dynamic> decodedToken = JwtDecoder.decode(jwtToken);
  dynamic roles = decodedToken['roles']; // Replace 'user_roles' with the actual key for the roles in your JWT token payload

  if (roles is List<dynamic>) {
    return roles.map((role) => role.toString()).toList();
  } else {
    return [];
  }
}

String getUserFirstNameFromToken(String jwtToken) {
  Map<String, dynamic> decodedToken = JwtDecoder.decode(jwtToken);

  // Vérifier que la clé 'prenom' existe et que sa valeur est de type String
  if (decodedToken.containsKey('prenom') && decodedToken['prenom'] is String) {
    return decodedToken['prenom'];
  } else{
    return '';
  }
}



List<String> getUserLastNameFromToken(String jwtToken) {
  Map<String, dynamic> decodedToken = JwtDecoder.decode(jwtToken);
  dynamic roles = decodedToken['roles']; // Replace 'user_roles' with the actual key for the roles in your JWT token payload

  if (roles is List<dynamic>) {
    return roles.map((role) => role.toString()).toList();
  } else {
    return [];
  }
}

List<String> getUserCINFromToken(String jwtToken) {
  Map<String, dynamic> decodedToken = JwtDecoder.decode(jwtToken);
  dynamic roles = decodedToken['roles']; // Replace 'user_roles' with the actual key for the roles in your JWT token payload

  if (roles is List<dynamic>) {
    return roles.map((role) => role.toString()).toList();
  } else {
    return [];
  }
}

List<String> getUserEmailFromToken(String jwtToken) {
  Map<String, dynamic> decodedToken = JwtDecoder.decode(jwtToken);
  dynamic roles = decodedToken['roles']; // Replace 'user_roles' with the actual key for the roles in your JWT token payload

  if (roles is List<dynamic>) {
    return roles.map((role) => role.toString()).toList();
  } else {
    return [];
  }
}

List<String> getUserGenderFromToken(String jwtToken) {
  Map<String, dynamic> decodedToken = JwtDecoder.decode(jwtToken);
  dynamic roles = decodedToken['roles']; // Replace 'user_roles' with the actual key for the roles in your JWT token payload

  if (roles is List<dynamic>) {
    return roles.map((role) => role.toString()).toList();
  } else {
    return [];
  }
}

List<String> getUserPhoneFromToken(String jwtToken) {
  Map<String, dynamic> decodedToken = JwtDecoder.decode(jwtToken);
  dynamic roles = decodedToken['roles']; // Replace 'user_roles' with the actual key for the roles in your JWT token payload

  if (roles is List<dynamic>) {
    return roles.map((role) => role.toString()).toList();
  } else {
    return [];
  }
}

List<String> getUserProfilFromToken(String jwtToken) {
  Map<String, dynamic> decodedToken = JwtDecoder.decode(jwtToken);
  dynamic roles = decodedToken['roles']; // Replace 'user_roles' with the actual key for the roles in your JWT token payload

  if (roles is List<dynamic>) {
    return roles.map((role) => role.toString()).toList();
  } else {
    return [];
  }
}

