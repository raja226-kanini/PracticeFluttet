import 'package:flutter/material.dart';
import 'package:paractice_flutter/views/home_screen.dart';
import 'package:paractice_flutter/views/registration_screen.dart';
import 'package:paractice_flutter/views/videoscreen.dart';
import 'package:paractice_flutter/widgets/drawer_item_widget.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  var currentIndexdata = 0;
  List dashBoardScreensList = [
    HomeScreen(),
    VideoScreen(),
    RegistrationScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Tabbar screen"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
            color: Colors.white,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: DrawerHeader(child: Text("Drawer header"), decoration: BoxDecoration(
                color: Colors.blue,
              )),
            ),
            DrawerItemWidget(titleValue:"Home", onTap: (){
              print("Home");
            }, ),
            DrawerItemWidget(titleValue: "Logout",onTap: (){
                            print("Logout");

            },),
            DrawerItemWidget(titleValue: "Gogula", onTap: () {
                            print("Gogula");

            },),


          //   TextButton(onPressed: (){}, child: Text("Home")),
          //   Divider(),
          //  // TextButton(onPressed: (){}, child: Text("Logout")),
          //   TextButton.icon(onPressed: 
          //   (){}, icon: Icon(Icons.logout), label: Text("Logout")),
          //   Divider(),

          ],
        ),
      ),
      //endDrawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.grey,
        currentIndex: currentIndexdata,
        selectedIconTheme: const IconThemeData(color: Colors.red),
        unselectedItemColor: Colors.black,
        onTap: (position) {
          currentIndexdata = position;
          print("position of bottom tabbar : $currentIndexdata");
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle),
            label: "Video",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_off_outlined),
            label: "Profile",
          ),
        ],
      ),
    body: dashBoardScreensList[currentIndexdata],
    );
  }
}
