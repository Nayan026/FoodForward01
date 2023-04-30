import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hotel_login.dart';
import 'who.dart';

void main() => runApp(MaterialApp(
      home: Hotel_Signin(),
    ));

class Hotel_Signin extends StatelessWidget {
  final passwordController = TextEditingController();
  final addressController = TextEditingController();
  final contactNoController = TextEditingController();

  void _onChanged(String value) {
    // Do something when the value of the contact number field changes
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              Text(
                'Dear Donor, Welcome to the Food Forward Community :)',
                textScaleFactor: 2.0,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.brown, fontSize: 15.0),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Create New\n   Account',
                  textScaleFactor: 2.0,
                  style: TextStyle(color: Colors.brown, fontSize: 15.0),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  //controller: nameofOrganizationController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name of Your Organization',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: addressController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: contactNoController,
                  decoration:
                      const InputDecoration(labelText: "Enter your number"),
                  keyboardType: TextInputType.number,
                  onChanged: _onChanged,
                  maxLength: 10,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ], // Only numbers can be entered
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                child: Text('Sign in'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFe8772e)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Hotel_Login()));
                },
                child: Text(
                  'Already Have an Account?\n                Log In',
                  style: TextStyle(
                    fontSize: 18,
                    //fontWeight: FontWeight.bold,
                    color: Colors.black,
                    //decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => who()));
                },
                child: Text(
                  'Not a Donor?',
                  style: TextStyle(
                    fontSize: 18,
                    //fontWeight: FontWeight.bold,
                    color: Colors.black,
                    //decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
