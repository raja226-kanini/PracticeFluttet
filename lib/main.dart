import 'package:flutter/material.dart';
import 'package:paractice_flutter/views/api_implement_screen.dart';
import 'package:paractice_flutter/views/app_life_cycle.dart';
import 'package:paractice_flutter/views/getstart_screen.dart';
import 'package:paractice_flutter/views/login_screen.dart';
import 'package:paractice_flutter/views/registration_screen.dart';
import 'package:paractice_flutter/views/shaped_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     home: ShapedScreen(),
     debugShowCheckedModeBanner: false,
    );
  }
}
