// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:test_app/screens/home_page.dart';
import 'screens/home_page.dart';
import 'screens/profile_screen.dart';


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
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex], //HomePage()
      bottomNavigationBar: SizedBox(
        height: 90.0,
        width: 40.0,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          backgroundColor: Colors.black,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              label: "Home", 
              icon: Icon(Icons.home, color: Colors.white)),
            // BottomNavigationBarItem(
            //     label: "Settings", 
            //     icon: Icon(Icons.search, color: Colors.white)),
            BottomNavigationBarItem(
                label: "Profile", 
                icon: Icon(Icons.person, color: Colors.white)),
        ],
        ),
      )
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

// class Test extends StatelessWidget{
//   const Test({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       body:             
//     );
//   }
// }