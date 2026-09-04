import 'package:flutter/material.dart';
import 'package:faizaldo_ppkd_app_dev/widgets/app_drawer.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text('Profil Saya'),
        backgroundColor: Color.fromARGB(255, 0, 255, 13),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
              radius: 30,
            ),
            title: Text(
              'Nama:  Muhammad Faiz Aldo Firmansyah',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.location_on, size: 16),
              SizedBox(width: 10),
              Text(
                'Alamat: Jl. Kp. Pulo Jahe No. 39B RT 008 RW 010,',
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.description, size: 16),
            title: Text(
              'Deskripsi: Saya adalah seorang pengembang aplikasi mobile dan Web developer. Alumni dari SMK Negeri 71 Jakarta kejuruan Rekayasa Perangkat Lunak. Saya memiliki pengalaman PKL dan pernah membuat website menggunakan Visual Studio Code, XAMPP SERVER MySQL.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
