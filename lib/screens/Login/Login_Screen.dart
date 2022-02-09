import 'package:flutter/material.dart';

import '../../Color.dart';
import 'components/BodyLogin.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOrange,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: kOrange,
      // ),
      body: BodyLogin(),
    );
  }
}
