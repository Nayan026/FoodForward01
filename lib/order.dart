import 'package:flutter/material.dart';
import 'thank_you.dart';
import 'no_ans.dart';

import 'package:firebase_core/firebase_core.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf9f8f7),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              //skip icon

              child: Image.asset('assets/logo.png')),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            padding: EdgeInsets.only(right: 100),
            child: const Text(
                'To Maintain the authenticity we urge you  to call the Donor to  confirm your order ',
                textScaleFactor: 1.0,
                style: TextStyle(color: Colors.black, fontSize: 20.0)),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color(0xFFe8772e),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.phone_android_rounded,
                  color: Colors.white,
                  size: 24.0,
                ),
                SizedBox(width: 8.0),
                Text(
                  '+91-9313696799',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
              alignment: Alignment.center, child: Text('Is your Confirmed?')),
          Container(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => thanks()));
                  },
                  child: Text(
                    'Yes',
                    style: TextStyle(fontSize: 20),
                  ))),
          Container(
              child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => no_ans()));
            },
            child: Text(
              'No',
              style: TextStyle(fontSize: 20),
            ),
          ))
        ],
      ),
    );
  }
}
