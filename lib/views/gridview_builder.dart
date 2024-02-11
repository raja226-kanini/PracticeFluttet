import 'package:flutter/material.dart';

class GridViewBuilderScreen extends StatefulWidget {
  const GridViewBuilderScreen({super.key});

  @override
  State<GridViewBuilderScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GridViewBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            print('Item $index');
          },
          child: Card(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home),
              Text('Item $index'),
            ],
          )),
        );
      },
      itemCount: 20,
    ));
  }
}
