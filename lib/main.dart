import 'package:appdynamics_agent/appdynamics_agent.dart';
import 'package:flutter/material.dart';
import 'package:paractice_flutter/views/animationImage_screen.dart';
import 'package:paractice_flutter/views/api_implement_screen.dart';
import 'package:paractice_flutter/views/app_life_cycle.dart';
import 'package:paractice_flutter/views/dashboard_screen.dart';
import 'package:paractice_flutter/views/getstart_screen.dart';
import 'package:paractice_flutter/views/intrestcaluculator_screen.dart';
import 'package:paractice_flutter/views/listview_builder_screen.dart';
import 'package:paractice_flutter/views/listview_screen.dart';
import 'package:paractice_flutter/views/listviewitemseparator.dart';
import 'package:paractice_flutter/views/login_screen.dart';
import 'package:paractice_flutter/views/registration_screen.dart';
import 'package:paractice_flutter/views/shaped_screen.dart';


// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   final config = AgentConfiguration(
//       appKey: "<EUM_APP_KEY>",
//       loggingLevel: LoggingLevel.verbose, // optional, for better debugging.
//       collectorURL: "<COLLECTOR_URL>", // optional, mostly on-premises. 
//       screenshotURL: "<SCREENSHOT_URL>" // optional, mostly on-premises.
//   );
//   await Instrumentation.start(config);

//   runApp(const MainApp());
// }
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
      primaryColor: Colors.indigo,
     ),
     home: ListviewItemSeparatorScreen(),
     debugShowCheckedModeBanner: false,
     
    );
  }
}
