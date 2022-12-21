import 'package:flutter/material.dart';

import '../Theme_Colors.dart';
import '../chats_info.dart';
import '../widgets/ListTile.dart';

class BroadcastScreen extends StatelessWidget {
  const BroadcastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text("New broadcast",style: headerStyle,),
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text("0 of ${info.length} selected",style: subHeaderStyle,),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.search_outlined),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: greenColor,
        child: const Icon(Icons.arrow_forward),
      ),
      body: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context,index){
          return CustomListTile4(
            avatar: info[index]["profilePic"].toString(),
            contactName: info[index]["name"].toString(),
            status: info[index]["status"].toString(),
          );
        },
      ),
    );
  }
}
