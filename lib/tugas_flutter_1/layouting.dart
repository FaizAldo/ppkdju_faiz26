import 'package:flutter/material.dart';

class Layouting extends StatelessWidget {
  const Layouting({super.key});

  static const String routeName = '/menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Luminouis News', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold)),
        backgroundColor: const Color.fromARGB(255, 3, 255, 16), titleTextStyle: TextStyle(color: Color.fromARGB(255, 0, 255, 13), fontSize: 20, fontWeight: FontWeight.bold),
        leading: IconButton(
          icon: const Icon(Icons.view_headline, color: Color.fromARGB(255, 0, 0, 0)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '. Innovation',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Times New Roman',
                  color: Color.fromARGB(255, 0, 238, 20),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Masa Depan Energi Terbarukan: Inovasi EcoSync di Tahun 2024',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.calendar_today, size: 16),
                  SizedBox(width: 6),
                  Text(
                    '24 Mei 2024 Oleh Admin EcoSync',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                'assets/images/profile.jpeg',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 30),
            Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Teknologi rumah pintar terus berkembang pesat, membawa efisiensi energi ke tingkat yang belum terbayangkan sebelumnya.',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Times New Roman',
                ),
                textAlign: TextAlign.left,
              ),
            ),
             
          ],
        ),
       ]
      ),
    ));
  }
}
