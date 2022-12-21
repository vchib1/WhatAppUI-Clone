import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsappuiclone/Theme_Colors.dart';
import 'package:whatsappuiclone/constants.dart';
import 'package:whatsappuiclone/popup_menu_pages/add_broadcast.dart';
import 'package:whatsappuiclone/popup_menu_pages/add_group.dart';
import 'package:whatsappuiclone/pages/calls.dart';
import 'package:whatsappuiclone/pages/chats.dart';
import 'package:whatsappuiclone/pages/status.dart';
import 'package:whatsappuiclone/popup_menu_pages/settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              floating: true,
              elevation: 0.0,
              backgroundColor: primaryColor,
              title: const Text("WhatsApp", style: TextStyle(color: textColor),),
              systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent),
              actions: [
                const Icon(Icons.camera_alt_outlined, color: textColor,),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 5.0),
                  child: Icon(Icons.search_outlined, color: textColor,),
                ),
                PopupMenuButton(
                    onSelected: (value){
                      if(value == 0){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const GroupScreen()));
                      }
                      if(value == 1){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BroadcastScreen()));
                      }
                      if(value == 5){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
                      }
                    },
                    icon: const Icon(Icons.more_vert, color: textColor,),
                    color: primaryColor,
                    itemBuilder: (context) => [
                      PopupMenuItem(
                          value: 0,
                          child: Text(popMenuItems[0], style: popMenuStyle,)
                      ),
                      PopupMenuItem(
                          value: 1,
                          child: Text(popMenuItems[1], style: popMenuStyle,)
                      ),
                      PopupMenuItem(
                          value: 2,
                          child: Text(popMenuItems[2], style: popMenuStyle,)
                      ),
                      PopupMenuItem(
                          value: 3,
                          child: Text(popMenuItems[3], style: popMenuStyle,)
                      ),
                      PopupMenuItem(
                          value: 4,
                          child: Text(popMenuItems[4], style: popMenuStyle,)
                      ),
                      PopupMenuItem(
                          value: 5,
                          child: Text(popMenuItems[5], style: popMenuStyle,)
                      ),
                    ])
              ],
              bottom: const TabBar(
                labelColor: lightTheme ? Colors.white : greenColor,
                unselectedLabelColor: textColor,
                indicatorColor: lightTheme ? Colors.white : greenColor,
                tabs: [
                  Tab(
                    child: Text("Chats"),
                  ),
                  Tab(
                    child: Text("Status"),
                  ),
                  Tab(
                    child: Text("Calls"),
                  ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              ChatsScreen(),
              StatusScreen(),
              CallScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
