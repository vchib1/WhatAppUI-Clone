import 'package:flutter/material.dart';
import '../Theme_Colors.dart';
import '../chats_info.dart';
import '../widgets/ListTile.dart';

class CallScreen extends StatelessWidget {
  CallScreen({Key? key}) : super(key: key);

  final List<Color> color = [
    Colors.red,Colors.green,Colors.red,
    Colors.red,Colors.green,Colors.red,
    Colors.red,Colors.green,Colors.red,
  ];
  final List<IconData> callType = [
    Icons.call,
    Icons.videocam,
    Icons.call,
    Icons.call,
    Icons.videocam,
    Icons.call,
    Icons.call,
    Icons.videocam,
    Icons.call,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: (){},
        child: const Icon(Icons.phone_forwarded,size: 26,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Padding(
            padding: const EdgeInsets.only(top:3.0),
            child: ListTile(
              title: const Text("Create call link",style: contactNameStyle,),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text("Share a link for your whatsapp call",style: messageStyle,),
              ),
              leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Transform.rotate(
                      angle: 40,
                      child: const Icon(Icons.link_sharp,size: 30,color: Colors.white,))
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0,top: 15.0),
            child: Text("Recent",style: messageStyle,),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: callType.length,
              itemBuilder: (context,index){
                return CustomListTile3(
                  color: color[index],
                  callType: callType[index],
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
