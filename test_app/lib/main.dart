// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:test_app/screens/home_page.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstPage());
  }
}

class FirstPage extends StatefulWidget {
  FirstPage({Key? key}) : super(key: key);
  

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int currentIndex = 0;
    final screens = [
    HomePage(),
    SecondPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 45.0,
        backgroundColor: Colors.black,
        leading:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/instagram.png'),
          ),
        actions: <Widget>[
          IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.add_box_outlined)),
          IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.favorite_border_outlined)),
          IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.messenger_outline_rounded))
          ]
        ),
      body: HomePage(), //screens[currentIndex];
      // bottomNavigationBar: BottomNavigationBar(
      //   showUnselectedLabels: false,
      //   currentIndex: currentIndex,
      //   onTap: (index) => setState(() => currentIndex = index),
      //   items: const [
      //     BottomNavigationBarItem(
      //       label: "Home", 
      //       icon: Icon(Icons.home)),
      //     BottomNavigationBarItem(
      //         label: "Settings", 
      //         icon: Icon(Icons.settings)),
      //   ],
      // )
    );
  }
}
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text("This is the Settings Page"),
    );
  }
}