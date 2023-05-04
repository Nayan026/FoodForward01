import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'thank_you.dart';
import 'no_ans.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_core/firebase_core.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);
  
  _makingPhoneCall() async {
    var url = Uri.parse("tel:9776765434");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final phoneNumber = user?.phoneNumber;
    
    return Scaffold(
      backgroundColor: const Color(0xFFf9f8f7),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/logo.png'),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            padding: const EdgeInsets.only(right: 100),
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
            decoration: const BoxDecoration(
              color: Color(0xFFe8772e),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.phone_android_rounded,
                  color: Colors.white,
                  size: 24.0,
                ),
                SizedBox(width: 8.0),
                Text(
                  '+91-9346597414',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
              alignment: Alignment.center, child: const Text('Is your Confirmed?')),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const thanks()));
              },
              child: const Text(
                'Yes',
                style: TextStyle(fontSize: 20),
              )),
          TextButton(
            onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const no_ans()));
            },
            child: const Text(
          'No',
          style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
