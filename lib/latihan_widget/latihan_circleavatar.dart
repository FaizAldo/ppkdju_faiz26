import 'package:flutter/material.dart';

class LatihanCircleavatar extends StatelessWidget {
const LatihanCircleavatar({ super.key}); //ini constructor untuk membuat instance dari LatihanCircleavatar

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan CircleAvatar'),
        backgroundColor: Colors.blue,
      ),
      body:  Center(
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/profile.jpeg'),
          backgroundColor: Colors.grey[300],
        ),
      ),
    );
  }
}