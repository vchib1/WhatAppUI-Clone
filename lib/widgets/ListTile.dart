import '../Theme_Colors.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {

  final String contactName;
  final String message;
  final String avatar;
  final String time;

  const CustomListTile({Key? key,
    required this.message,
    required this.contactName,
    required this.avatar,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:6.0),
      child: ListTile(
        title: Text(contactName,style: contactNameStyle,),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(message,style: messageStyle,),
        ),
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(avatar),
        ),
        trailing: Text(time,style: timeStyle,)
      ),
    );
  }
}

class CustomListTile2 extends StatelessWidget {

  final String contactName;
  final String avatar;
  final String time;

  const CustomListTile2({Key? key,
    required this.contactName,
    required this.avatar,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:6.0),
      child: ListTile(
        title: Text(contactName,style: contactNameStyle,),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(time,style: timeStyle,),
        ),
        leading: Container(
          decoration: BoxDecoration(
            border: Border.all(color: greenColor,width: 3),
            borderRadius: BorderRadius.circular(30),
          ),
          child: CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(avatar),
          ),
        ),
      ),
    );
  }
}

class CustomListTile3 extends StatelessWidget {

  final String contactName;
  final String avatar;
  final String time;
  final Color color;
  final IconData callType;

  const CustomListTile3({Key? key,
    required this.contactName,
    required this.avatar,
    required this.time,
    required this.color,
    required this.callType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:6.0),
      child: ListTile(
        title: Text(contactName,style: contactNameStyle,),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              Icon(Icons.call_made,color: color,size: 18,),
              const SizedBox(width: 5,),
              Text(time,style: timeStyle,),
            ],
          )
        ),
        leading: CircleAvatar(
          radius: 22,
          backgroundImage: NetworkImage(avatar),
        ),
        trailing: Icon(callType,color: greenColor,),
      ),
    );
  }
}

class CustomListTile4 extends StatelessWidget {

  final String contactName;
  final String avatar;
  final String status;

  const CustomListTile4({Key? key,
    required this.contactName,
    required this.avatar,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:6.0),
      child: ListTile(
        title: Text(contactName,style: contactNameStyle,),
        subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(status,style: messageStyle,)
        ),
        leading: CircleAvatar(
          radius: 22,
          backgroundImage: NetworkImage(avatar),
        ),
      ),
    );
  }
}
