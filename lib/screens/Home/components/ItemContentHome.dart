import 'package:appappolyver2/Models/ContentHome.dart';
import 'package:flutter/material.dart';

import '../InFoContentHome.dart';

class ItemContentHome extends StatelessWidget {
  const ItemContentHome({
    Key? key,
    required this.size,
    required this.content,
  }) : super(key: key);

  final Size size;
  final ContentHome content;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                width: size.width,
                margin: EdgeInsets.all(15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          content.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Người đăng: ${content.user}",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text("Thời gian: ${content.time}"),
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
            builder: (context) => InfoContentHome(
                  content: content,
                ))), // chueyenr mafn hifnh
      ),
    );
  }
}
