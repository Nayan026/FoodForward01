import 'package:flutter/material.dart';
import "Splash/splash1.dart";
import 'package:firebase_core/firebase_core.dart';
import 'Splash/logo_screen.dart';

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

