import 'package:cure/widgets/hospitalcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = 'Cure';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            margin: const EdgeInsets.fromLTRB(10, 40, 10, 10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('lib/assets/pill_pattern.png'),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: Text(
                        'Next Dose ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        child: Text(
                          'after:',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Center(
                    child: Text(
                      '01 : 20 : 30',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),

                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                              'Medicine:',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                              'Aspirin 1000mg',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                              'Dose:',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                              '1 Tablet',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  'Nearby Hospitals',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: ElevatedButton.icon(
                  iconAlignment: IconAlignment.end,
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.black),
                  label: Text('View All'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
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
          ),
         Expanded(child: ListView( 
            shrinkWrap: true,
            physics:AlwaysScrollableScrollPhysics(),
            children: [
             // 1
HospitalCard(
  hospitalName: "Al Shorouk Hospital",
  hospitalType: "General",
  hospitalRating: '4.5',
  hospitalCity: 'Cairo',
  hospitalDistance: '3.2 km',
  hospitalPhone: '+20 100 123 4567',
  hospitalLocation: '90th St, Al Shorouk'
),

// 2
HospitalCard(
  hospitalName: "Dar El Fouad Hospital",
  hospitalType: "Specialized",
  hospitalRating: '4.8',
  hospitalCity: 'October',
  hospitalDistance: '12.5 km',
  hospitalPhone: '+20 100 234 5678',
  hospitalLocation: 'Central Axis Road'
),

// 3
HospitalCard(
  hospitalName: "Cairo Medical Center",
  hospitalType: "Multi-Specialty", 
  hospitalRating: '4.6',
  hospitalCity: 'Nasr City',
  hospitalDistance: '5.1 km',
  hospitalPhone: '+20 100 345 6789',
  hospitalLocation: 'Makram Ebeid St'
),

// 4
HospitalCard(
  hospitalName: "Children's Cancer Hospital",
  hospitalType: "Pediatric",
  hospitalRating: '4.9',
  hospitalCity: 'Giza',
  hospitalDistance: '8.3 km',
  hospitalPhone: '+20 100 456 7890',
  hospitalLocation: 'El Dokki St'
),

// 5  
HospitalCard(
  hospitalName: "Egyptian Cardiac Center",
  hospitalType: "Cardiology",
  hospitalRating: '4.7',
  hospitalCity: 'Heliopolis',
  hospitalDistance: '6.7 km',
  hospitalPhone: '+20 100 567 8901',
  hospitalLocation: 'El Merghany St'
),
            ],
          )),
        ],
      ),
    );
  }
}
