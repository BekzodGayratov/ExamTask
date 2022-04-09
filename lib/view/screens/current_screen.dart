import 'package:examtask/constants/my_theme.dart';
import 'package:examtask/methods/my_app_bar_method.dart';
import 'package:examtask/view/screens/contacts_screen.dart';
import 'package:flutter/material.dart';

class CurrentScreen extends StatelessWidget {
  CurrentScreen({Key? key}) : super(key: key);

  final List<Widget> _screens = [ContactsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.myBackgroundColor,
      appBar: myAppBar(context),
      body: _screens[0],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: MyTheme.myBackgroundColor,
        selectedItemColor: MyTheme.selectedItemColor,
        unselectedItemColor: MyTheme.unselectedItemColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(color: MyTheme.selectedItemColor),
        unselectedLabelStyle: TextStyle(color: MyTheme.unselectedItemColor),
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), label: "Contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: "New"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline), label: "Saved"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
    );
  }
}
