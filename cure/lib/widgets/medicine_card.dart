import 'package:flutter/material.dart';

class MedicineCard extends StatelessWidget {
  MedicineCard({
    super.key,
    required this.medicineName,
    required this.time,
    this.medicineImage = 'lib/assets/Hospital.jpg',
    required this.dose,
  });
  String medicineName;
  String time;
  String medicineImage;
  String dose;

  Widget build(Object context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 163,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  medicineImage,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    medicineName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dose.toString(),
                        style: const TextStyle(color: Colors.blue),
                      ),
                      Icon(Icons.star, color: Colors.yellow),
                      Container(
                        width: 1,
                        height: 20, // Matches text height
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        color: Colors.grey,
                      ),
                      Text(time, style: const TextStyle(color: Colors.grey)),
                    ],
                  ), // first Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'open $dose hours',
                        style: const TextStyle(color: Colors.green),
                      ),
                      Container(
                        width: 1,
                        height: 20, // Matches text height
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        color: Colors.grey,
                      ),
                      Text(
                        '${dose}',
                        style: const TextStyle(color: Colors.blue),
                      ),
                      Container(
                        width: 1,
                        height: 20, // Matches text height
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        color: Colors.grey,
                      ),
                      Text(
                        dose,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ), // second row
                ],
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.pin_drop_outlined),
                  label: Text('Directions'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: const Color.fromARGB(255, 242, 242, 242),
                    foregroundColor: Colors.black,
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 5,
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.phone_outlined),
                    label: Text('Call'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
                      foregroundColor: Colors.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.edit_calendar_outlined),
                  label: Text('Book', style: TextStyle(fontSize: 12)),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: const Color.fromARGB(255, 242, 242, 242),
                    foregroundColor: Colors.black,
                  ),
                ),
              ),
            ],
          ), //third row
        ],
      ),
    );
  }
}
