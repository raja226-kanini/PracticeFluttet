import 'package:flutter/material.dart';

class ListviewItemWidget extends StatefulWidget {
  final Color color ;
  final double containerheight;
  final int indexVal;
  ListviewItemWidget({super.key, required this.color , required this.containerheight , required this.indexVal});

  @override
  State<ListviewItemWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListviewItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: widget. color,
        height: widget.containerheight,
        width: MediaQuery.of(context).size.width *0.9,
        child:   Center(child: Text("${widget.indexVal}", style: TextStyle(fontSize: 120),)),
      );
  }
}