import 'dart:ui';

import 'package:flutter/material.dart';

class ProfilLayout extends StatelessWidget {
const ProfilLayout({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Profil Saya", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white),),
       leading: Icon(Icons.person),
       ),
       body: Column(
        children: [
          SizedBox(height: 12,),
            Center(
              child:
              Text("Profil Saya", style: TextStyle(fontStyle: FontStyle.italic, fontFamily: 'Roboto', fontSize: 20)),
            ),
            SizedBox(height: 14,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.verified_user),
            ),
            Center(
              child: Text("Muhammad Faiz Aldo Firmansyah" ),
            ),
            SizedBox(height: 12,),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 11,),
                    Text("Email: muhammadfaizaldo@gmail.com"),
                  ],
                ),
              ),
            ),
             SizedBox(height: 12,),
          Row(
            children: [
              Icon(Icons.phone),
              Text("Hubungi Saya: 081381144285"),
              Spacer(),
              Icon(Icons.location_city),
              Text("Lokasi: Jakarta")
            ],
          ),
           Row(
             children: [
               Expanded(
                 child: Container(
                  child: 
                  Text("Kounitas adalah langkah awal kolaborasi anda.")
                 ),
               ),
             ],
           ),
           SizedBox(width: 11,),
           Row(
             children: [
               Expanded(child: Container(
                child: Text("Ceo / Owner Development Learning Indonesia"),
               )),
             ],
           ),
           SizedBox(
            child:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Deskripsi: Kami Selalu Melayan dengan penuh hati"),
              
            )
           )
        ],
       
        ),
    );
  }
}