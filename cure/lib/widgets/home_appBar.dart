import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      title: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(
              image: AssetImage("lib/assets/logo.jpg"),
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 20),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi 👋', textAlign: TextAlign.start),
              Text('Adham', textAlign: TextAlign.start),
            ],
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.notifications),
            color: Colors.grey,
            tooltip: 'Notifications',

            onPressed: () {
              /// for notification button press
              showDialog(
                context: context,
                builder:
                    (context) => AlertDialog(
                      title: const Text('Notifications'),
                      content: const Text('You have 1 new notification.'),
                      actions: [
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                        ),
                      ],
                    ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
