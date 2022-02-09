
import 'package:flutter/material.dart';

class BodyPointed extends StatefulWidget {
  const BodyPointed({
    Key? key,
  }) : super(key: key);

  @override
  _BodyPointedState createState() => _BodyPointedState();
}

class _BodyPointedState extends State<BodyPointed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Table(
        columnWidths: {0: FractionColumnWidth(.6)},
        border: TableBorder.all(),
        children: [
          TableRow(children: [
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: Text("Tên đầu điểm",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: Text("Trọng số",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10 , right: 10),
              child: Column(
                
                children: [
                  Text("Điểm",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ]),
          TableRow(children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Document",
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("10",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}