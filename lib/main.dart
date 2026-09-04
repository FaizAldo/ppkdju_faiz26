import 'package:faizaldo_ppkd_app_dev/latihan_widget/latiihan_single_child_scroll_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //build method adalah method yang digunakan untuk membangun widget
    return MaterialApp(
      //MaterialApp adalah widget yang digunakan untuk mengatur tema, navigasi, dan lainnya dalam aplikasi
      title: 'Test App', //
      theme: ThemeData(
        //ThemeData adalah class yang digunakan untuk mengatur tema aplikasi
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF155E63)),
      ),
      home: const LatiihanSingleChildScrollBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
