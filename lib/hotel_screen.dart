import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class hotel_screen extends StatefulWidget {
  const hotel_screen({super.key});

  @override
  State<hotel_screen> createState() => _hotel_screenState();
}

class _hotel_screenState extends State<hotel_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(child: Image.asset('assets/logo2.png')),
          
            Container(
               alignment: Alignment.center,
            child: ElevatedButton( child: Text("hotel screen"),
          style: ElevatedButton.styleFrom(
            primary:Color (0xFFe8772e),
            elevation: 0,),
             onPressed: () {
              
             },)
            )
          ]),
    );
  }
}