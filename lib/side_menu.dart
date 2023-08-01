import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'welcome.dart'; // Remplacez 'welcome_page.dart' par le nom de votre fichier contenant la WelcomePage
import 'login.dart';


class SideMenu extends StatelessWidget {

  Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token') ?? '';
  }
  
  void _logout(BuildContext context) async {
    // Supprimer le token d'authentification des shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');

    // Naviguer vers la page de connexion après la déconnexion réussie
    Navigator.pushReplacementNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Maryam RACHID'),
            accountEmail: Text('maryaam.rachid@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo.png'), // Replace with your image path
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Accueil'),
            onTap: () {
              // Add your functionality for the "Accueil" button here
              Navigator.pop(context); // Closes the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()), // Replace 'WelcomePage' with your actual page class name
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Paramètres'),
            onTap: () {
              // Add your functionality for the "Paramètres" button here
              Navigator.pop(context); // Closes the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('À propos'),
            onTap: () {
              // Add your functionality for the "À propos" button here
              Navigator.pop(context); // Closes the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contacts'),
            onTap: () {
              // Add your functionality for the "Contacts" button here
              Navigator.pop(context); // Closes the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Déconnexion'),
            onTap: () {
              // Add your functionality for the "Accueil" button here
              Navigator.pop(context); // Closes the drawer
              _logout(context); // Appelle la méthode de déconnexion
            },
          ),
        ],
      ),
    );
  }
}
