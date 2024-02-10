import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class DrawerItemWidget extends StatelessWidget {
 String? titleValue = "";
 final  Function()?  onTap;

  DrawerItemWidget({super.key , this.titleValue ,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(onPressed: onTap != null ? onTap: null, child: Text(titleValue ?? "")),
        const Divider(),
      ],
    );
  }
}
