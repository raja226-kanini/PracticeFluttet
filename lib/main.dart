import 'package:flutter/material.dart';
import 'package:paractice_flutter/views/registration_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     home: RegistrationScreen(),
     debugShowCheckedModeBanner: false,
    );
  }
}
