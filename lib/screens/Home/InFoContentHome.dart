import 'package:appappolyver2/Models/ContentHome.dart';
import "package:flutter/material.dart";

import 'components/BodyContentHome.dart';

class InfoContentHome extends StatelessWidget {
  const InfoContentHome({Key? key, required this.content}) : super(key: key);
  final ContentHome content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          content.title,
          maxLines: 2,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () =>
              Navigator.of(context).pop(), // tạo tự kiện cho nút back leading
        ),
      ),
      body: BodyInfoContentHome(content: content),
    );
  }
}
