import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:paractice_flutter/viewmodel/user_model.dart';

class GetUsersScreen extends StatefulWidget {
  const GetUsersScreen({super.key});

  @override
  State<GetUsersScreen> createState() => _GetUsersScreenState();
}

class _GetUsersScreenState extends State<GetUsersScreen> {

Future<http.Response> getData() async
{
 http.Response response  = await http.get(Uri.parse("https://reqres.in/api/users/"));
    print("response >> " + response.statusCode.toString());
    print("response body >> " + response.body.toString());

    return response;
}
@override
  void initState() {
    //getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserList"),
      ),
      body: FutureBuilder<http.Response>(future: getData(),builder: ((context, snapshot)
      {

        if (snapshot.hasData && snapshot.data != null)
        {
          Map map = jsonDecode(snapshot.data!.body.toString());
          print("snapshot.data " + map['data'].toString());     

          List<UserModel> usermodelList = (map["data"] as List).map((e) => UserModel.fromJson(e)).toList();

          //ListviewBuilder 
              return ListView.builder(
                  itemCount: usermodelList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(usermodelList[index].id.toString()),
                      title: Text(usermodelList[index].email.toString()),
                    );
                  });
            }
            if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }
            return Center(child: CircularProgressIndicator());
          })),
          
    );
  }
}