import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:paractice_flutter/widgets/listviewItem_container.dart';

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
             ListviewItemWidget(containerheight: 300,indexVal: 1, color: const Color.fromARGB(137, 214, 101, 101)),
             ListviewItemWidget(containerheight: 300,indexVal: 2, color: const Color.fromARGB(136, 70, 52, 201)),
             ListviewItemWidget(containerheight: 300,indexVal: 3, color: const Color.fromARGB(136, 58, 35, 35)),
            
              ],
            ),
          ),
        ],
      ),
    );
  }

}