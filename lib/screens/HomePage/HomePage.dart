import 'dart:async';

import 'package:appappolyver2/Color.dart';
import 'package:appappolyver2/screens/Home/HomeScreens.dart';
import 'package:appappolyver2/screens/Login/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'components/BodyHomePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOrange,
      body: BodyHomePage(),
    );
  }
}
