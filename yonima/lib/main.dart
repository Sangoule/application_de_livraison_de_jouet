import 'package:flutter/material.dart';
import 'Contenu/accueil.dart';
import 'Contenu/flutter-onepage-design.dart';
import 'package:yonima/login.dart';
import 'package:yonima/register.dart';

import 'Contenu/profil.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    initialRoute: 'login',
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'accueil': (context) => HomePage(),
      'profil':(context) => ProfilePage(),
      'test':(context) => MyApp(),
    },
  ));
}
