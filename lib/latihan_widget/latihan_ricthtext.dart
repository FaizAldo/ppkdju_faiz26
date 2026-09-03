import 'package:flutter/material.dart';

class LatihanRichText extends StatelessWidget {
const LatihanRichText({ super.key}); //ini constructor untuk membuat instance dari LatihanRichText

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan RichText'),
        backgroundColor: Colors.blue,
      ),
      body:  RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 226, 2, 2)),
          children: [
            TextSpan(text: 'Halo, ini adalah '),
            TextSpan(text: 'Latihan', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' RichText', style: TextStyle(fontStyle: FontStyle.italic)),
          ],
        ),
      ),
    );
  }
}