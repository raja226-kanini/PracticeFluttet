import 'package:flutter/material.dart';

class AppLifecycle extends StatefulWidget {
  const AppLifecycle({super.key});

  @override
  State<AppLifecycle> createState() => _AppLifecycleState();
}

class _AppLifecycleState extends State<AppLifecycle>
    with WidgetsBindingObserver {
  @override
  void initState() {
        WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      print("it is in resumed state");
    }
    if (state == AppLifecycleState.paused) {
      print("it is in paused state");
    }
    if (state == AppLifecycleState.inactive) {
      print("it is in inactive state");
    }
    if (state == AppLifecycleState.detached) {
      print("it is in detached state");
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App States"),
        backgroundColor: Colors.amberAccent,
      ),
      body: const Center(
          child: Text(
        "I love Flutter coding",
        style: TextStyle(
          fontSize: 80,
        ),
        textAlign: TextAlign.center,
      )),
    );
  }
}
