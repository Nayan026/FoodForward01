import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/sign_in.dart';

class log_in extends StatefulWidget {
  const log_in({super.key});

  @override
  State<log_in> createState() => _log_inState();
}

class _log_inState extends State<log_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFf9f8f7),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Log In',
                      textScaleFactor: 2.0,
                      style: TextStyle(color: Colors.brown, fontSize: 15.0),
                    )),
                SizedBox(
                  height: 20,
                ),
                
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      child: const Text("Log In"),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFe8772e),
                        elevation: 0,
                      ),
                      onPressed: () {
                      },
                    )),
                Container(
                  //skip icon
                  alignment: Alignment.center,
                  child: TextButton(
                    child: Text("Dont Have Account\n            Sign In"),
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                    onPressed: () {
                       Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => sign_in()),
                          );
                    },
                  ),
                ),
                 
               
              ]),
        )
    );
  }
}