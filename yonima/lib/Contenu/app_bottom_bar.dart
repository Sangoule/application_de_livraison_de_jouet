
import 'package:flutter/material.dart';

class AppBottomBar extends StatefulWidget {
  @override
  _AppBottomBarState createState() => _AppBottomBarState();
}
class _AppBottomBarState extends State<AppBottomBar> {
  int inx = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: inx,
        onTap: (index) {
          setState(() {
            inx = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              icon: Icon(Icons.create_new_folder)),
          BottomNavigationBarItem(
              icon: Icon(Icons.comment)),
          BottomNavigationBarItem(
              icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle)),
        ]);
  }
}