import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ImageListScreen extends StatefulWidget {
  @override
  _ImageListScreenState createState() => _ImageListScreenState();
}

class _ImageListScreenState extends State<ImageListScreen> {
  List<String> _imageUrls = [];

  @override
  void initState() {
    super.initState();
    _loadImageUrls();
  }

  Future<void> _loadImageUrls() async {
    final ListResult result = await FirebaseStorage.instance.ref().listAll();
    final urls = await Future.wait(
      result.items.map((ref) => ref.getDownloadURL()).toList(),
    );
    setState(() {
      _imageUrls = urls;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image List'),
      ),
      body: ListView.builder(
        itemCount: _imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(_imageUrls[index]);
        },
      ),
    );
  }
}
