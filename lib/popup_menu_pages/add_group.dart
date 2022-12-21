import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Theme_Colors.dart';

import '../chats_info.dart';
import '../widgets/ListTile.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("New Group",style: headerStyle,),
            Padding(
              padding: EdgeInsets.only(top: 6.0),
              child: Text("Add participants",style: subHeaderStyle,),
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
