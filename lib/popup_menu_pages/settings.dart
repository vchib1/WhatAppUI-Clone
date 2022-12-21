import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Theme_Colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: primaryColor,
        elevation: 0.0,
      ),
    );
  }
}
