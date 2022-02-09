import 'package:appappolyver2/Models/ContentHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Color.dart';
import 'components/ViewPagePoint.dart';
import 'components/ViewpageHome.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _LoginScreensState createState() => _LoginScreensState();
}

class _LoginScreensState extends State<HomeBody> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  String title = "sdfsdf";
  int _currentIndex = 0;
  static const List<Widget> _widgetList = <Widget>[
    const ViewPage(
      // contentHomeData: contenHomeDataa ,
      title: "Học tập",
      title2: "Hoạt động",
      title3: "Học phí",
    ),
    const ViewPagePoint(
      // contentHomeData: contenHomeDataa ,
      title: "Kì học",
      title2: "Lịch sử",
      title3: "Bảng điểm",
    ),
    const ViewPage(
      title: "Lịch học",
      title2: "Lịch thi",
      title3: "Điểm danh",
    ),
    Center(
      child: Text("Thông tin thêm", style: TextStyle(fontSize: 30)),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: _widgetList[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        selectedIconTheme: IconThemeData(color: Colors.orange),
        selectedLabelStyle: TextStyle(color: Colors.orange),
        fixedColor: Colors.orange,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: "Trang chủ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_sharp),
            label: "Điểm",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: "Điểm danh",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined),
            label: "Thêm",
          ),
        ],
      ),
    );
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

AppBar buildAppBar() {
  return AppBar(
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/notification.svg",
            color: Colors.white, width: 24, height: 24),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/searchver2.svg",
            color: Colors.white, width: 24, height: 24),
      ),

      SizedBox(
        width: kDefaultPaddin / 2,
      ) // cách khoảng trnawgs ra
    ],
    title: Text(
      "Xin chào , Dinh thanh Minh",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    ),
  );
}
