import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ngo_screen extends StatefulWidget {
  const ngo_screen({super.key});

  @override
  State<ngo_screen> createState() => _ngo_screenState();
}

class _ngo_screenState extends State<ngo_screen> {
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
            child: ElevatedButton( child: Text("ngo screen"),
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