import 'package:flutter/material.dart';
import 'package:faizaldo_ppkd_app_dev/widgets/app_drawer.dart';

class LatihanColumn extends StatelessWidget {
  const LatihanColumn({
    super.key,
  }); //ini constructor untuk membuat instance dari LatihanColumn

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
