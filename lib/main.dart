import 'package:flutter/material.dart';
import 'package:paprclip_task/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      // darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}