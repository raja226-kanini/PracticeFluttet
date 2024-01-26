import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration screen"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CachedNetworkImage(
                height: 150,
                imageUrl:
                    "https://t4.ftcdn.net/jpg/02/78/54/29/360_F_278542923_rKZvE6M5pkL457HrQPxKi9JBuvzDIDnz.jpg"),
            Text(
              "Welcome to The App, create your account enjoy GV News",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const CircleAvatar(),
            TextFormField(),
            TextFormField(),
            TextFormField(),
            TextFormField(),
          ],
        ),
      ),
    );
  }
}
