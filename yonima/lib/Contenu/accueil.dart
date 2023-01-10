import 'package:flutter/material.dart';
int currentIndex = 0;

void navigateToScreens(int index) {
  currentIndex = index;
}
class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livraison de jouets'),
        backgroundColor: Color.fromARGB(255, 30, 98, 244),
      ),
       drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 206, 212, 228),
        child: ListView(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          children: [
            ListTile(
              title: Text('login'),
              onTap: () {
                // Naviguer vers la page de connextion
                Navigator.pushNamed(context, 'login');
              },
            ),
            ListTile(
              title: Text('Profil'),
              onTap: () {
                // Naviguer vers la page de test
                Navigator.pushNamed(context, 'test');
              },
            ),
          ],
        ),
      ),
      
    );
    
  }
}
