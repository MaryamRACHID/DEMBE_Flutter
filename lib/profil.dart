import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'side_menu.dart';
import 'package:dembe/helpers/accessUser.dart';

class profil extends StatelessWidget {
  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: SideMenu(), // Include the SideMenu widget here
      body: Center(
        child: FutureBuilder<String?>(
          future: getToken(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); // Afficher un indicateur de chargement en attendant que le token soit récupéré
            }
            else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData && snapshot.data != null && snapshot.data!.isNotEmpty) {
              String token = snapshot.data!;
              List<String> userRoles = getUserRolesFromToken(token);
              String userFirstName = getUserFirstNameFromToken(token);

              String rolesString = userRoles.join(', '); // Convert the list to a comma-separated string

              if(userRoles.contains("ROLE_ADMIN")){
                return Text('Token: $token\nUser Role: $rolesString');
              } else{
                return Text('Token: $token\nPrenom: $userFirstName\nUser Role: $rolesString');
              }
            }
            else {
              // Gérer le cas où le token est null ou vide
              return Text('Token not available');
            }
          },
        ),
      ),
    );
  }
}
