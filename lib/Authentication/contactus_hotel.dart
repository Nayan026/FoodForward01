import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/nav-drawer.dart';
import 'package:flutter_application_1/Authentication/upload.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_application_1/Authentication/image.dart';

class phoneNumber extends StatelessWidget {
   phoneNumber({Key? key}) : super(key: key) {
    _streama = contactNoCollection.snapshots();
  }
   final CollectionReference contactNoCollection =
      FirebaseFirestore.instance.collection('contactNo-hotel');
      late Stream<QuerySnapshot> _streama;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       endDrawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFFe8772e),
        title: const Text("Food Forward"),
      ),
      body:  StreamBuilder<QuerySnapshot>(
        stream: _streama,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Some error occurred ${snapshot.error}'));
          }
           //Check if data arrived
          if (snapshot.hasData) {
            //get the data
            QuerySnapshot querySnapshot = snapshot.data;
            List<QueryDocumentSnapshot> documents = querySnapshot.docs;
           List<Map> items = documents
                .map((e) => {
                      'contactNo': e['contactNo'],
                      
                    })
                .toList();
                 return ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  //Get the item at this index
                  Map thisItem = items[index];
                  //REturn the widget for the list items
                  return Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(1.0),
                        width: 300.0,
                        height: 300.0,
                        child: ListTile(
                          tileColor: Color(0xFFf9f7f8),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", // Replace with the URL of your image
                                width: double
                                    .infinity, // Set the width of the image to fill the available space
                                height: 100, // Set the height of the image
                                fit: BoxFit
                                    .fitWidth, // Set the fit property to cover or contain
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'contactNo: ${thisItem['contactNo']}',
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )]))));});}
        return const Center(child: CircularProgressIndicator());
  }
  ),
  
    );
  }
}