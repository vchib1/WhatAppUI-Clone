import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Theme_Colors.dart';

import '../chats_info.dart';
import '../widgets/ListTile.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 40,
            child: FloatingActionButton(
              backgroundColor: primaryColor,
              onPressed: (){},
              child: const Icon(Icons.add,size: 26,),
            ),
          ),
          const SizedBox(height: 12,),
          FloatingActionButton(
            backgroundColor: greenColor,
            onPressed: (){},
            child: const Icon(Icons.camera_alt,size: 26,),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Padding(
            padding: const EdgeInsets.only(top:3.0),
            child: ListTile(
              title: const Text("My status",style: contactNameStyle,),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text("Tap to add status update",style: messageStyle,),
              ),
              leading: Stack(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(Icons.person,size: 36,color: Colors.white,)
                  ),
                  Positioned(
                    top: 30,
                    left: 30,
                    child: Container(
                      height: 22,
                      width: 22,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: greenColor,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: secondaryColor,width: 2)
                      ),
                      child: const Icon(Icons.add,size:16,color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0,top: 15.0),
            child: Text("Recent updates",style: messageStyle,),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context,index){
                return CustomListTile2(
                  avatar: info[index]["profilePic"].toString(),
                  contactName: info[index]["name"].toString(),
                  time: "${info[index]["day"]}  ${info[index]["time"]}",
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
