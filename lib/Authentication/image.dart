import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ImageListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image List'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('images').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }
          final documents = snapshot.data!.docs;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: documents.length,
            itemBuilder: (context, index) {
              final imageUrl = documents[index]['imageUrl'] as String?;
              if (imageUrl == null) {
                return Container(); // Or any other placeholder widget
              }
              return Image.network(
                imageUrl,
                fit: BoxFit.cover,
              );
            },
          );
        },
      ),
    );
  }
}
