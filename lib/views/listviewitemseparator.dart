import 'package:flutter/material.dart';
import 'package:paractice_flutter/widgets/listviewItem_container.dart';

class ListviewItemSeparatorScreen extends StatefulWidget {
  const ListviewItemSeparatorScreen({super.key});

  @override
  State<ListviewItemSeparatorScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListviewItemSeparatorScreen> {
  List<String> itemsList = [
    "Veeramma",
    "Manohar",
    "Indhumathi",
    "Lashu",
    "Kavi"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListviewSeparator"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print('$index');
              },
              child: ListviewItemWidget(
                color: Colors.black12, containerheight: 200, indexVal: index),
            );
            
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 4,
              color: Colors.blue,
            );
          },

          itemCount: itemsList.length),
    );
  }
}
