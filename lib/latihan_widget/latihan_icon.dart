import 'package:flutter/material.dart';

class LatihanIcon extends StatelessWidget {
const LatihanIcon({ super.key}); //ini constructor untuk membuat instance dari LatihanIcon

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Icon'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.view_headline),
            iconSize: 30,
            onPressed: () {
              // Aksi ketika tombol settings ditekan
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Tombol View Headline ditekan')),
              );
            },
          ),
        ],
       leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
           
        
        ),
      ),
      body: const Center(
        child: Icon(Icons.battery_charging_full, size: 100, color: Colors.green),
      ),
    );
  }
}