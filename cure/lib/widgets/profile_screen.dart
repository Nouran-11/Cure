import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: const Text(
          'This is the Profile Screen',
          style: TextStyle(fontSize: 18),
        ),
      );
  }
}