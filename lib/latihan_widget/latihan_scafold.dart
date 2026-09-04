import 'package:flutter/material.dart'; //import library material.dart dari package flutter
import 'package:faizaldo_ppkd_app_dev/widgets/app_drawer.dart';

class LatihanScafold extends StatelessWidget {
  const LatihanScafold({
    super.key,
  }); //ini constructor untuk membuat instance dari LatihanScafold

  @override //override method build untuk membangun widget
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold adalah widget yang menyediakan struktur dasar untuk aplikasi, termasuk AppBar, Body, dan lainnya
      drawer: const AppDrawer(),
      appBar: AppBar(
        //AppBar adalah widget yang menampilkan bar di atas layar aplikasi
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text(
          'Latihan Scafold Detail',
        ), //Text adalah widget yang menampilkan teks di layar
        backgroundColor: Colors.blue, //backgroundColor adalah properti untuk mengatur warna latar belakang AppBar
      ),
      body: Column(
        //Column adalah widget yang menampilkan widget anak secara vertikal
        children: const [
          //children adalah properti untuk menambahkan widget anak ke dalam Column
          Text(
            'Halo, ini adalah latihan Scaffold dan Column',
          ), //Text adalah widget yang menampilkan teks di layar
        ],
      ),
    );
  }
}
