import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:appdynamics_agent/appdynamics_agent.dart';
import 'package:paractice_flutter/views/appdynamics_screen.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({super.key});

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  List<String> frameWorkList = ["GV","GM","GR","GL","GK","GI"];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("ListView Builder"),),
    body: ListView.builder(itemCount: frameWorkList.length,itemBuilder:(context, index) {
      return myContainer(index: frameWorkList[index],containerheight: 300);
    },),

    );
  }

     Widget myContainer({required String index, required double containerheight, Color color = Colors.green } ){
    return Container(
        color: color,
        height: containerheight,
        width: double.infinity,
        child:   Center(child: Text("$index", style: TextStyle(fontSize: 120),)),
      );
  }
}

class ListTailScreen extends StatefulWidget {
  const ListTailScreen({super.key});

  @override
  State<ListTailScreen> createState() => _ListTailScreenState();
}

class _ListTailScreenState extends State<ListTailScreen> {
    List<String> frameWorkList = ["GV","GM","GR","GL","GK","GI"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: frameWorkList.length,itemBuilder: (context, index) {
        
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.cyan,
            backgroundImage: CachedNetworkImageProvider("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0MHzzuYV6tQFjMV1NpVVOEO3_EVdOjJ5F7w&usqp=CAU"),
          ),
          trailing: Icon(Icons.settings),
          title: Text(frameWorkList[index]),
          subtitle:Text("sub title",textAlign: TextAlign.start,maxLines: 1,overflow: TextOverflow.ellipsis,) ,
          onTap: () {
          
               // AppdynamicsAgent.trackEvent('CustomEventName');

            Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewDetailsScreen(),));
          },
        );
      },),
    );
  }
}

class ListViewDetailsScreen extends StatelessWidget {
  final String titlestr,description;
   ListViewDetailsScreen({super.key ,this.titlestr = "",this.description = ""});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("details screen"),),
      
    );
  }
}