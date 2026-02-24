import 'package:flutter/material.dart';

class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointments'),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 4,
        itemBuilder: (context, index) => Card(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            title: const Text('Abdullah Hussein'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Heart Dx'),
                Text('13, Nov 2025 / 9:00 - 9:30 PM'),
                Text('Aman Private Hospital'),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.check_circle, color: Colors.green),
                Text('Passed'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
