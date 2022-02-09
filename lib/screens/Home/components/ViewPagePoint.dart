import 'package:appappolyver2/Models/ContentHome.dart';
import 'package:appappolyver2/Models/Point.dart';
import 'package:appappolyver2/screens/Home/components/ItemPointed.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Color.dart';
import 'ItemContentHome.dart';

class ViewPagePoint extends StatefulWidget {
  const ViewPagePoint({
    Key? key,
    this.title,
    this.title2,
    this.title3,
    //    required this.contentHomeData
  }) : super(key: key);
  final String? title;
  final String? title2;
  final String? title3;

  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPagePoint> {
  List<Pointed> pointedData = [
    Pointed("Lập trình Mobile đa nền tảng - CP16306", 9.0, 1),
    Pointed("Lập trình Mobile đa nền tảng - CP16306", 9.0, 2),
    Pointed("Lập trình Mobile đa nền tảng - CP16306", 9.0, 0),
    Pointed("Lập trình Mobile đa nền tảng - CP16306", 9.0, 0),
    Pointed("Lập trình Mobile đa nền tảng - CP16306", 9.0, 0),
    Pointed("Lập trình Mobile đa nền tảng - CP16306", 9.0, 2),
    Pointed("Lập trình Mobile đa nền tảng - CP16306", 9.0, 1),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new PreferredSize(
          // khong đc dùng mater sẽ dính tool bar
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: new Container(
            height: 50.0,
            child: new TabBar(
              tabs: [
                Tab(
                    child: Text(
                  widget.title!,
                  style: TextStyle(color: Colors.orange),
                )),
                Tab(
                    child: Text(
                  widget.title2!,
                  style: TextStyle(color: Colors.orange),
                )),
                Tab(
                    child: Text(
                  widget.title3!,
                  style: TextStyle(color: Colors.orange),
                )),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
                color: kGrey,
                child: ListView.builder(
                    itemCount: pointedData.length,
                    itemBuilder: (context, index) {
                      return ItemPointed(
                          size: size, pointed: pointedData[index]);
                    })),
            Center(
              child: Text("LỊch sử"),
            ),
            Center(
              child: Text("Bảng điểm"),
            ),
          ],
        ),
      ),
    );
  }
}
