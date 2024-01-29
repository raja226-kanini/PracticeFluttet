import 'package:flutter/material.dart';

class ShapedScreen extends StatelessWidget {
  const ShapedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.topLeft,
        
        children: [
          // Your logo image
          Image.asset('assets/loginbgimg.png', width: 150, height: 150),
          // Stars positioned around the logo
          Positioned(
            top: 30,
            left: 60,
            child: Icon(Icons.star, size: 20, color: Colors.yellow),
          ),
          Positioned(
            top: 100,
            left: 5,
            child: Icon(Icons.star, size: 20, color: Colors.yellow),
          ),
          Positioned(
            top: 100,
            right: 5,
            child: Icon(Icons.star, size: 20, color: Colors.yellow),
          ),
          Positioned(
            bottom: 30,
            left: 60,
            child: Icon(Icons.star, size: 20, color: Colors.yellow),
          ),
          // Add more stars or adjust positions as needed
        ],
      ),
    );
  }
  
}
