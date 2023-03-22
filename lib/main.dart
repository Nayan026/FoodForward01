import 'package:flutter/material.dart';
import 'splash1.dart';
import 'logo_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{                                //Main Function Added
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'logo_screen',
    routes:{
      'logo_screen':(context) =>logo_screen()
    }
  ));
}

