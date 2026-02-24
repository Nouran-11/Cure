import 'package:flutter/material.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const CureApp());
}

class CureApp extends StatelessWidget {
  const CureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cure App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}
