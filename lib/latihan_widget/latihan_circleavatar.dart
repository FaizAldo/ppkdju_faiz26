import 'package:flutter/material.dart';
import 'package:faizaldo_ppkd_app_dev/widgets/app_drawer.dart';

class LatihanCircleavatar extends StatelessWidget {
  const LatihanCircleavatar({
    super.key,
  }); //ini constructor untuk membuat instance dari LatihanCircleavatar

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
        title: const Text('Latihan CircleAvatar'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/profile.jpeg'),
          backgroundColor: Colors.grey[300],
        ),
      ),
    );
  }
}
