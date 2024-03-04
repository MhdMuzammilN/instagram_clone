import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constants.dart';
import 'package:instagram_clone/view/home_screen/home_screen.dart';
import 'package:instagram_clone/view/search_screen/search_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int navigationState = 0;

  List naviagtionBarItems = [
    const HomeScreen(),
    const SearchScreen(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.green,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: naviagtionBarItems[navigationState],
      bottomNavigationBar: BottomNavigationBar(

          //# navigation-bar behaviour
          onTap: (value) {
            navigationState = value;
            setState(() {});
          },
          currentIndex: navigationState,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: ColorConstants.primaryBlack,

          // # navigation-bar items
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              activeIcon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),
                label: "Search",
                activeIcon: Icon(Icons.search_outlined)),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined),
                label: "Post",
                activeIcon: Icon(Icons.add_box)),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined),
                label: "Notification",
                activeIcon: Icon(Icons.favorite)),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 12,
                ),
                label: "Profile")
          ]),
    );
  }
}
