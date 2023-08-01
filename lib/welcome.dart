import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {

  void _handleStart(BuildContext context) {

    Navigator.pushNamed(context, '/profil');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              height: 372,
              decoration: BoxDecoration(
                color: Colors.grey, // Vous pouvez remplacer la couleur par celle de FlutterFlow
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/image.jpg',
                  ).image,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(31),
                  bottomRight: Radius.circular(31),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Félicitations !',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text(
                      'Vous avez complété le parcours de recrutement avec succès et nous sommes heureux de vous compter bientôt parmi nous. \n\nPour préparer votre arrivée, vous pouvez utiliser Dembe, l\'assistant digital d\'intégration de SG ABS.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: ElevatedButton(
                      onPressed: () => _handleStart(context), // Associer la fonction _handleStart au clic du bouton
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFD60003), // Couleur du bouton
                        onPrimary: Colors.white, // Couleur du texte sur le bouton
                        shadowColor: Color(0x32171717), // Couleur de l'ombre du bouton
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'DEMARRER',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(width: 12),
                          Icon(
                            Icons.arrow_right_alt,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

