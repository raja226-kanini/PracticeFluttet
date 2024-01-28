import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:paractice_flutter/views/get_users_screen.dart';

class APIImplementscreen extends StatefulWidget {
  const APIImplementscreen({super.key});

  @override
  State<APIImplementscreen> createState() => _APIImplementscreenState();
}

class _APIImplementscreenState extends State<APIImplementscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "API",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  registerUser();
                },
                child: const Text("Register")
                ),

               ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const GetUsersScreen()));
                },
                child: const Text("Get User List ")
                ),
          ],
        ),
      ),
    );
  }

  registerUser() async {
    String post_api = "https://reqres.in/api/users";
    Map map = {"name": "morpheus", "job": "leader"};
    http.Response response = await http.post(Uri.parse(post_api), body: map);

    if (response.body != null) {
      print("response" + response.body);
    } else {
      print("Sme thing went wrong");
    }
  }
}
