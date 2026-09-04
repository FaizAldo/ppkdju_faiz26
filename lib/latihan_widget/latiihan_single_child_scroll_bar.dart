import 'package:flutter/material.dart';

class LatiihanSingleChildScrollBar extends StatelessWidget {
const LatiihanSingleChildScrollBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan single child"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        
        child: Column(
          
           children: [
           
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Latihan scv"),
        ),
        SizedBox(height: 800,),
        Text("Tes SCV"),
        SizedBox(height: 30,)
       ],
        ),
      
        ),
      );
    
  }
}