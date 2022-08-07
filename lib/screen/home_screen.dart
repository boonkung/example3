import 'package:example3/interface/menu.dart';
import 'package:example3/screen/about_screen.dart';
import 'package:example3/screen/contact_screen.dart';
import 'package:example3/screen/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Menu> _menu = [
    Menu(
      icon: Icon(Icons.newspaper),
      title: "News",
      screen: NewsScreen(),
    ),
    Menu(
      icon: Icon(Icons.perm_contact_calendar),
      title: "Contact",
      screen: ContactScreen(),
    ),
    Menu(
      icon: Icon(Icons.account_box_outlined),
      title: "About me",
      screen: AboutScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
    );
  }
}