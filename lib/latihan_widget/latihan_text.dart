import 'package:flutter/material.dart';
import 'package:faizaldo_ppkd_app_dev/widgets/app_drawer.dart';

class LatihanText extends StatelessWidget {
  const LatihanText({
    super.key,
  }); //ini constructor untuk membuat instance dari LatihanText

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
        title: const Text('Latihan Text'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(child: Text('Halo, ini adalah text')),
    );
  }
}
