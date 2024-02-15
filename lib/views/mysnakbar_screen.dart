import 'package:flutter/material.dart';
import 'package:paractice_flutter/widgets/mysnackbar.dart';

class MySnackbarScreen extends StatefulWidget {
  const MySnackbarScreen({super.key});

  @override
  State<MySnackbarScreen> createState() => _MySnackbarScreenState();
}

class _MySnackbarScreenState extends State<MySnackbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text("My SnakBar"),),
      body: Center(child: ElevatedButton(onPressed: (){

        MySnackbar.show(context, "Hi Rajasekhar", logo: Icon(Icons.car_rental));
      },
       child: Text('Show the SnakBar'))),
    );
  }
}