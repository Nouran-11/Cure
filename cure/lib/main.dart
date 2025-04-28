import 'package:cure/widgets/home_appBar.dart';
import 'package:cure/widgets/hospitalcard.dart';
import 'package:cure/widgets/medicinescreen.dart';
import 'package:cure/widgets/profile_screen.dart';
import 'package:flutter/material.dart';
import 'widgets/homescreen.dart';
import 'widgets/mapScreen.dart';

void main() {
  runApp(Cure());
}

class Cure extends StatefulWidget {
  const Cure({super.key});

  

  @override
  State<StatefulWidget> createState() => _CureState();

}

class _CureState extends State<Cure> {
   int _currentIndex = 0;
  final List<Widget> _screens = [
    MyHomePage(),
     MapScreen(),
    const Medicinescreen(),
    const ProfileScreen(),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cure',
      theme: ThemeData(),
      home: Scaffold(
        appBar: const HomeAppBar(),
        body:_screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(currentIndex:_currentIndex,onTap:(index)=> setState(()=> _currentIndex = index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pin_drop),
              label: 'Hospitals',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_services),
              label: 'Medicine',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              
            ),
          ],

        ),
      
      )
    );
  }
  }

