import 'package:flutter/material.dart';
import 'package:flutter_gemini_ai/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pasa palabra',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
      ),
      home: ImagePickerDemo(),
    );
  }
}
