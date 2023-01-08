import 'package:flutter/material.dart';
import 'Contenu/accueil.dart';
import 'package:yonima/login.dart';
import 'package:yonima/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    initialRoute: 'login',
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'accueil': (context) => HomePage(),
    },
  ));
}
