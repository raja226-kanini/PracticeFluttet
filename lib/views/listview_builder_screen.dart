import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({super.key});

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("ListView Builder"),),
    body: ListView.builder(itemCount: 100,itemBuilder:(context, index) {
      return myContainer(index: index +1,containerheight: 300);
    },),

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