import 'package:example3/interface/menu.dart';
import 'package:example3/screen/about_screen.dart';
import 'package:example3/screen/contact_screen.dart';
import 'package:example3/screen/news_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void onIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Menu> _menu = [
    Menu(
      icon: const Icon(Icons.newspaper),
      title: "News",
      screen: const NewsScreen(),
    ),
    Menu(
      icon: const Icon(Icons.perm_contact_calendar),
      title: "Contact me",
      screen: const ContactScreen(),
    ),
    Menu(
      icon: const Icon(Icons.account_box_outlined),
      title: "About me",
      screen: const AboutScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _menu[_currentIndex].title,
        ),
      ),
      body: _menu[_currentIndex].screen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onIndexChanged,
        items: _menu
            .map((e) => BottomNavigationBarItem(
                  icon: e.icon,
                  label: e.title,
                ))
            .toList(),
      ),
    );
  }
}
