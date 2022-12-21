import 'dart:ui';

import 'package:flutter/material.dart';

const bool lightTheme = false;
const Color primaryColor = lightTheme ? Color(0xff00a884) : Color(0xff202c33);
const Color secondaryColor = lightTheme ? Colors.white : Color(0xff111b21);
const Color textColor = lightTheme ? Colors.white : Color(0xff86959f);
const Color textColor2 = Color(0xff888d8f);
const Color greenColor = Color(0xff00a884);
const Color whiteColor = lightTheme ? Colors.black : Colors.white;

const TextStyle contactNameStyle =  TextStyle(
  color: whiteColor,
  fontWeight: FontWeight.bold,
  fontSize: 15
);

const TextStyle messageStyle =  TextStyle(color: textColor2, fontSize: 14);

const TextStyle timeStyle =  TextStyle(color: textColor2, fontSize: 14);

const TextStyle popMenuStyle =  TextStyle(color: textColor, fontSize: 14);

const TextStyle headerStyle =  TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18
);

const TextStyle subHeaderStyle =  TextStyle(color: lightTheme ? Colors.white : textColor2, fontSize: 16);
