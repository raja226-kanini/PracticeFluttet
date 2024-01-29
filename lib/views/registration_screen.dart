import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  SizedBox spacebetweentheTextFields = const SizedBox(
    height: 16,
  );
  bool isVisiblePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration screen"),
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
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
              spacebetweentheTextFields,
              const Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: CachedNetworkImageProvider(
                        "https://banner2.cleanpng.com/20190215/jto/kisspng-sri-venkateswara-swamy-vaari-temple-krishna-vishnu-5c670af05469d1.4106378115502568803458.jpg"),
                  ),
                  Positioned(
                      bottom: 0, right: 10, child: Icon(Icons.photo_camera)),
                ],
              ),
              spacebetweentheTextFields,
              TextFormField(
                keyboardType: TextInputType.text,
                maxLength: 50,
                decoration: const InputDecoration(
                  hintText: "Enter Name",
                  label: Text("Name"),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  counterText: "",
                ),
              ),
              spacebetweentheTextFields,
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                maxLength: 50,
                decoration: const InputDecoration(
                  hintText: "Enter Email",
                  label: Text("Email"),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  counterText: "",
                ),
              ),
              spacebetweentheTextFields,
              TextFormField(
                obscureText: isVisiblePassword,
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    label: const Text("Password"),
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.password),
                    counterText: "",
                    suffixIcon: GestureDetector(
                      child: Icon(isVisiblePassword
                          ? Icons.visibility_off
                          : Icons.visibility_outlined),
                      onTap: () {
                        isVisiblePassword = !isVisiblePassword;
                        print("suffixIcon Tapped:$isVisiblePassword");

                        setState(() {});

                        // setState(() {
                        //   isVisiblePassword != isVisiblePassword;
                        // print("suffixIcon Tapped:$isVisiblePassword");
                        // });
                      },
                    )),
              ),
              spacebetweentheTextFields,
              ElevatedButton(onPressed: () {}, child: const Text("Rigster")),
              spacebetweentheTextFields,
              TextButton(
                  onPressed: () {},
                  child: const Text("Alredy having the Account with GV?")),
              spacebetweentheTextFields
            ],
          ),
        ),
      ),
    );
  }
}
