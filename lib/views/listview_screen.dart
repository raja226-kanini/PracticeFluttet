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
      appBar: AppBar(title: const Text("Listview"),backgroundColor: Colors.deepOrangeAccent,),
      backgroundColor: Colors.cyanAccent,
      body: Column(
        children: [
          SizedBox(
            height:  200,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(18),
              reverse: true,
              scrollDirection: Axis.horizontal,
              children: [
             myContainer(containerheight: 300,index: 1, color: const Color.fromARGB(137, 214, 101, 101)),
             myContainer(containerheight: 300,index: 2, color: const Color.fromARGB(136, 70, 52, 201)),
             myContainer(containerheight: 300,index: 3, color: const Color.fromARGB(136, 58, 35, 35)),
            
              ],
            ),
          ),
        ],
      ),
    );
  }
   Widget myContainer({required int index, required double containerheight, Color color = Colors.green } ){
    return Container(
        color: color,
        height: containerheight,
        width: MediaQuery.of(context).size.width *0.9,
       // width: double.infinity,
        child:   Center(child: Text("$index", style: TextStyle(fontSize: 120),)),
      );
  }
}