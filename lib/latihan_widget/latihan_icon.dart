import 'package:flutter/material.dart';
import 'package:faizaldo_ppkd_app_dev/widgets/app_drawer.dart';

class LatihanIcon extends StatelessWidget {
  const LatihanIcon({
    super.key,
  }); //ini constructor untuk membuat instance dari LatihanIcon

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Latihan Icon'),
        backgroundColor: Colors.blue,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            iconSize: 30,
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      body: const Center(
        child: Icon(
          Icons.battery_charging_full,
          size: 100,
          color: Colors.green,
        ),
      ),
    );
  }
}
