import 'package:appappolyver2/Models/ContentHome.dart';
import 'package:flutter/material.dart';

class BodyInfoContentHome extends StatelessWidget {
  const BodyInfoContentHome({
    Key? key,
    required this.content,
  }) : super(key: key);

  final ContentHome content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(content.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Text("Người đăng: ${content.user}"),
          Text("Thời gian: ${content.time}"),
        ],
      ),
    );
  }
}
