import 'package:flutter/material.dart';

class LatihanText extends StatelessWidget {
const LatihanText({ super.key}); //ini constructor untuk membuat instance dari LatihanText  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Text'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('Halo, ini adalah text'),
      ),
      );
  }
}