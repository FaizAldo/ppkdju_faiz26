import 'package:flutter/material.dart'; //import library material.dart dari package flutter

class LatihanScafold extends StatelessWidget {
  const LatihanScafold({super.key}); //ini constructor untuk membuat instance dari LatihanScafold

  @override //override method build untuk membangun widget
  Widget build(BuildContext context) {
    return Scaffold( //Scaffold adalah widget yang menyediakan struktur dasar untuk aplikasi, termasuk AppBar, Body, dan lainnya
      appBar: AppBar(//AppBar adalah widget yang menampilkan bar di atas layar aplikasi 
        title: const Text('Latihan Scafold Detail'),//Text adalah widget yang menampilkan teks di layar
        backgroundColor: Colors.blue,//backgroundColor adalah properti untuk mengatur warna latar belakang AppBar
      ),
      body: Column(//Column adalah widget yang menampilkan widget anak secara vertikal
        children: const [//children adalah properti untuk menambahkan widget anak ke dalam Column
          Text('Halo, ini adalah latihan Scaffold dan Column'),//Text adalah widget yang menampilkan teks di layar
         
        ],
      ),
    );
  }
}