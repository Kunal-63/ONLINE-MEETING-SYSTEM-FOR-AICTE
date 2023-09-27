import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:video_conf_sih/pages/home_page.dart';

void _showOkPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Upload Successful'),
        content: Text('Your upload was successful!'),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
        ],
      );
    },
  );
}

class FileShare extends StatefulWidget {
  const FileShare({super.key});

  @override
  State<FileShare> createState() => _FileShareState();
}

class _FileShareState extends State<FileShare> {
  File? _image;
  final imagePicker = ImagePicker();

  Future getImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(27, 67, 78, 1),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Center(
            child: _image == null
                ? const Text("No Image Selected")
                : Image.file(_image!),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromRGBO(27, 67, 78, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  _showOkPopup(context);
                },
                child: Text(
                  "Upload",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: "Pick Image",
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}
