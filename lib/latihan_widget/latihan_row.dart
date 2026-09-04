import 'package:flutter/material.dart';
import 'package:faizaldo_ppkd_app_dev/widgets/app_drawer.dart';

class LatihanRow extends StatelessWidget {
  const LatihanRow({
    super.key,
  }); //ini constructor untuk membuat instance dari LatihanRow

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
        title: const Text('Latihan Row'),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center, //mainAxisAlignment adalah properti untuk mengatur posisi widget anak secara horizontal
        children: [
          Text(
            'Halo, row pertama',
            style: TextStyle(fontSize: 14, color: Colors.red),
          ),
          Text(
            'Halo, row kedua',
            style: TextStyle(fontSize: 16, color: Colors.green),
          ),
          Text(
            'Halo, row ketiga',
            style: TextStyle(fontSize: 12, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
