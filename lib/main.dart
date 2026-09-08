import 'package:faizaldo_ppkd_app_dev/latihan_widget/latihan_column.dart';
import 'package:faizaldo_ppkd_app_dev/tgs_btn/tgs_btn.dart';
import 'package:faizaldo_ppkd_app_dev/tugas_flutter2/profil_layout.dart';
import 'package:faizaldo_ppkd_app_dev/tugas_flutter_1/layouting.dart';
import 'package:faizaldo_ppkd_app_dev/tugas_flutter_1/profil.dart';
import 'package:faizaldo_ppkd_app_dev/tugas_flutter_3_4/tugas_listview.dart';
import 'package:faizaldo_ppkd_app_dev/tugas_flutter_3_4/tugas_view_input.dart';
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
      home: const TgsBtn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
