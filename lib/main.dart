import 'package:flutter/material.dart';
import 'splash1.dart';
import 'logo_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'logo_screen',
    routes:{
      'logo_screen':(context) =>logo_screen()
    }
  ));
}

