import 'package:flutter/material.dart';

class LatihanColumn extends StatelessWidget {
const LatihanColumn({ super.key}); //ini constructor untuk membuat instance dari LatihanColumn

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Column'),
        backgroundColor: Colors.blue,
      ), 
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Halo, ini adalah baris pertama'),
          Text('Halo, ini adalah baris kedua'),
          Text('Halo, ini adalah baris ketiga'),
          Text('Halo, ini adalah baris keempat'),
          Text('Halo, ini adalah baris kelima'),
          Text('Halo, ini adalah baris keenam'),
          Text('Halo, ini adalah baris ketujuh'),
        ],
      ),
    );
  }
}