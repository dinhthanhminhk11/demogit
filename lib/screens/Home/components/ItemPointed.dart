import 'package:appappolyver2/Models/Point.dart';
import 'package:flutter/material.dart';

import '../InFoContentHome.dart';
import '../InFoPointed.dart';

class ItemPointed extends StatefulWidget {
  const ItemPointed({
    Key? key,
    required this.size,
    required this.pointed,
  }) : super(key: key);

  final Size size;
  final Pointed pointed;

  @override
  _ItemPointedState createState() => _ItemPointedState();
}

class _ItemPointedState extends State<ItemPointed> {
  Widget status(int status) {
    if (status == 1) {
      return Text("Tạch", style: TextStyle(color: Colors.red));
    } else if (status == 2) {
      return Text("passed", style: TextStyle(color: Colors.green));
    }
    return Text("Styding", style: TextStyle(color: Colors.yellow));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                width: widget.size.width,
                margin: EdgeInsets.all(15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          widget.pointed.tenLop,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Điểm trung bình: ${widget.pointed.mediumScore}",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: [
                          Text("Trạng Thái: "),
                          status(widget.pointed.status)
                        ],
                      ),
                    ]),
              ),
            ),
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_right_rounded),
              ),
            )
          ],
        ),

        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => InfoPointed(
                  pointed: widget.pointed,
                ))), // chueyenr mafn hifnh
      ),
    );
  }
}
