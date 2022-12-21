import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Theme_Colors.dart';
import 'package:whatsappuiclone/widgets/ListTile.dart';

import '../chats_info.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: secondaryColor,
      body: ListView.builder(
          itemCount: info.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
              },
              child: CustomListTile(
                avatar: info[index]["profilePic"].toString(),
                contactName: info[index]["name"].toString(),
                message: info[index]["message"].toString(),
                time: info[index]["time"].toString() ,
              ),
            );
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: greenColor,
        child: const Icon(Icons.message_rounded,size: 26,),
      ),
    );

  }
}
