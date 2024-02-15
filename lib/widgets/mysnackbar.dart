import 'package:flutter/material.dart';

class MySnackbar {
  static void show(BuildContext context, String message, {Widget? logo,Color? backgroundColor,Color? textColor , bool fromTop = false}) {
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

        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
        top: fromTop ? 0 : MediaQuery.of(context).viewInsets.bottom,
        bottom: fromTop ? MediaQuery.of(context).viewInsets.bottom : 0,
        left: 8,
        right: 8,
      ),
      ),
    );

  }
}
