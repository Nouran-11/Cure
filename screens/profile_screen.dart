import 'package:flutter/material.dart';
import 'appointments_screen.dart';
import '../widgets/profile_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.local_hospital), label: 'Hospitals'),
          BottomNavigationBarItem(icon: Icon(Icons.medication), label: 'Medications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Tasneem Ahmed',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AppointmentsScreen()),
                );
              },
              leading: const Icon(Icons.calendar_today),
              title: const Text('Appointments'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text(
                'Sign Out',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
