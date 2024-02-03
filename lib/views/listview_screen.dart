import 'dart:ffi';

import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Listview"),backgroundColor: Colors.deepOrangeAccent,),
      backgroundColor: Colors.cyanAccent,
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        padding: EdgeInsets.all(18),
        reverse: false,
        children: [
       myContainer(containerheight: 300,index: 1, color: const Color.fromARGB(137, 214, 101, 101)),
       myContainer(containerheight: 300,index: 2, color: Color.fromARGB(136, 70, 52, 201)),
       myContainer(containerheight: 300,index: 3, color: Color.fromARGB(136, 58, 35, 35)),

        ],
      ),
    );
  }
   Widget myContainer({required int index, required double containerheight, Color color = Colors.green } ){
    return Container(
        color: color,
        height: containerheight,
        width: double.infinity,
        child:   Center(child: Text("$index", style: TextStyle(fontSize: 120),)),
      );
  }
}