import 'package:flutter/material.dart';

class MySnackbar {
  static void show(BuildContext context, String message, {Widget? logo,Color? backgroundColor,Color? textColor}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (logo != null) logo,
            const SizedBox(width: 8),
            Text(message,
            style: TextStyle(
              color: textColor
            ),
            ),
          ],
        ),
      ),
    );
  }
}
