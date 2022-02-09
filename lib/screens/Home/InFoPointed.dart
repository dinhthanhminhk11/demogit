import 'package:appappolyver2/Models/ContentHome.dart';
import 'package:appappolyver2/Models/Point.dart';
import "package:flutter/material.dart";

import '../../Color.dart';
import 'components/BodyContentHome.dart';
import 'components/BodyPointed.dart';

class InfoPointed extends StatelessWidget {
  const InfoPointed({Key? key, required this.pointed}) : super(key: key);
  final Pointed pointed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pointed.tenLop,
          maxLines: 2,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () =>
              Navigator.of(context).pop(), // tạo tự kiện cho nút back leading
        ),
      ),
      body: BodyPointed(),
    );
  }
}
