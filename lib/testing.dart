import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:medical_app/Screens/auth/login.dart';

import 'package:ml_kit_ocr/ml_kit_ocr.dart';

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  XFile? image;
  late File _image;
  String recognitions = '';
  bool isProcessing = false;
  Future getImagefromcamera() async {
    image = await ImagePicker().pickImage(source: ImageSource.camera);

    setState(() {
      image = image;
    });
  }

  Future getImagefromGallery() async {
    image = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('MlKit ocr example app $recognitions '),
        ),
        body: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            const SizedBox(height: 20),
            if (image != null)
              SizedBox(
                height: 200,
                width: 200,
                child: InteractiveViewer(
                  child: Image.file(
                    File(image!.path),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            const SizedBox(height: 20),
            if (recognitions.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SelectableText('Recognized Text: $recognitions'),
              ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    getImagefromGallery();
                    recognitions = '';
                    setState(() {});
                  },
                  child: const Text('Pick Image'),
                ),
                FloatingActionButton(
                  onPressed: () {
                    getImagefromcamera();
                  },
                  tooltip: "Pick Image form gallery",
                  child: Icon(Icons.add_a_photo),
                ),
                if (image != null)
                  isProcessing
                      ? const Center(
                          child: CircularProgressIndicator.adaptive(),
                        )
                      : ElevatedButton(
                          onPressed: () async {
                            recognitions = 'dd';
                            final ocr = MlKitOcr();
                            // isProcessing = true;
                            setState(() {});
                            print(recognitions);
                            final result = await ocr.processImage(
                                InputImage.fromFilePath(image!.path));

                            recognitions = '';
                            print(result.blocks);
// Iterate over TextBlocks
                            for (var blocks in result.blocks) {
                              print(blocks);
                              for (var lines in blocks.lines) {
                                print(lines);

                                for (var words in lines.elements) {
                                  print(recognitions);

                                  recognitions += words.text;
                                }
                              }
                            }
                            setState(() {});
                          },
                          child: const Text('Predict from Image'),
                        ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Icon(Icons.add_a_photo),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
