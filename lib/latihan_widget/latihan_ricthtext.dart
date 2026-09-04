import 'package:flutter/material.dart';
import 'package:faizaldo_ppkd_app_dev/widgets/app_drawer.dart';

class LatihanRichText extends StatelessWidget {
  const LatihanRichText({
    super.key,
  }); //ini constructor untuk membuat instance dari LatihanRichText

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
        title: const Text('Latihan RichText'),
        backgroundColor: Colors.blue,
      ),
      body: RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 16,
            color: const Color.fromARGB(255, 226, 2, 2),
          ),
          children: [
            TextSpan(text: 'Halo, ini adalah '),
            TextSpan(
              text: 'Latihan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: ' RichText',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
