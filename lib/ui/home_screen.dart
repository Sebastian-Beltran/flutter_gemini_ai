// import 'dart:convert';
// import 'dart:io';
// import 'dart:ui' as imgui;

// import 'package:flutter/material.dart';
// import 'package:flutter_gemini_ai/env/env.dart';
// import 'package:google_generative_ai/google_generative_ai.dart';
// import 'package:image_picker/image_picker.dart';

// class ImageAnalysisApp extends StatefulWidget {
//   @override
//   _ImageAnalysisAppState createState() => _ImageAnalysisAppState();
// }

// class _ImageAnalysisAppState extends State<ImageAnalysisApp> {
//   late imgui.Image _selectedImage;
//   String _imageDescription = '';
//   final _imagePicker = ImagePicker();

//   Future<void> _analyzeImage() async {
//     if (_selectedImage == null) return;

//     // Analyze the image using Gemini API (code from previous response)
//     final description = await analyzeImage(_selectedImage);

//     setState(() {
//       _imageDescription = description;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Analysis App'),
//       ),
//       body: Column(
//         children: [
//           // Image display area
//           if (_selectedImage != null) Image.file(_selectedImage),

//           // Image selection button
//           ElevatedButton(
//             onPressed: () async {
//               final image =
//                   await _imagePicker.pickImage(source: ImageSource.gallery);
//               if (image != null) {
//                 setState(() {
//                   _selectedImage = File('assets/estudio.avif');
//                 });
//               }
//             },
//             child: Text('Select Image'),
//           ),

//           // Analyze image button
//           ElevatedButton(
//             onPressed: _analyzeImage,
//             child: Text('Analyze Image'),
//           ),

//           // Image description display
//           Text(_imageDescription),
//         ],
//       ),
//     );
//   }

//   Future<String> analyzeImage(imgui.Image image) async {
//     // Initialize Gemini API
//     final gemini = GenerativeModel(
//       model: 'gemini-1.5-flash',
//       apiKey: EnvPlatform.apiKey,
//     );

//     // Convert image to base64 encoded string
//     final imageBytes =
//         await image.toByteData(format: imgui.ImageByteFormat.png);
//     final imageBase64 = imageBytes!.buffer.asUint8List();

//     final prompt = TextPart("What's different between these pictures?");
//     final imageParts = [
//       DataPart('assets/estudio.avif', imageBase64),
//     ];
//     // Send image data to Gemini API
//     final response = await gemini.generateContent([
//       Content.multi([prompt, ...imageParts])
//     ]);

//     // Process the response and extract image description
//     return response.text!;

//     // Display the image description
//     // Update UI to display the description
//   }
// }
