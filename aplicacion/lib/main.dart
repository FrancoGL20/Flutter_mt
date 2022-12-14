import 'package:flutter/material.dart';
import 'web_page.dart';
import 'contactanos.dart';
import 'nosotros.dart';
import 'review.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bottom Navigation Bar',
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final List<Widget> screens = [
    Nosotros(),
    Contactanos(),
    WebPage(),
    Reviews(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    body: IndexedStack(
      index: currentIndex,
      children: screens,
    ),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.blueAccent,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      iconSize: 40,
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex = index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: 'About us',
          //backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Contact us',
          //backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.web),
          label: 'Web Page',
          //backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'Reviews',
          //backgroundColor: Colors.blue,
        ),
      ],
    ),
  );
}