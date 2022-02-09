import 'package:appappolyver2/screens/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Color.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ap App Poly',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false, // 1
          systemOverlayStyle: SystemUiOverlayStyle.light, // 2
        ),
        scaffoldBackgroundColor: kBackground,
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}
