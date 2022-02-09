import 'package:appappolyver2/Color.dart';
import 'package:appappolyver2/Models/ContentHome.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ItemContentHome.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({
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

class _ViewPageState extends State<ViewPage> {
  List<ContentHome> contenHomeDataa = [
    ContentHome("Thông tin về điều kiện bắt buộc môn Tiếng Anh", "quanbm7",
        "11:16:07 - 05/01/2022"),
    ContentHome(
        "THÔNG BÁO Đăng ký thi lại các môn online đợt 1 – kỳ SPRING 2022",
        "hungnht",
        "17:29:48 - 03/01/2022"),
    ContentHome(
        "THÔNG BÁO VỀ VIỆC TIẾP TỤC HỌC TẬP THEO HÌNH THỨC TRỰC TUYẾN VÀ THỜI KHÓA BIỂU KỲ SPRING 2022",
        "khanhdd12",
        "15:05:24 - 03/01/2022"),
    ContentHome("THÔNG BÁO Công bố điểm thi kết thúc block 2 kỳ Fall 2021",
        "hungnht", "11:46:47 - 02/01/2022"),
    ContentHome("THÔNG BÁO MỞ LỚP VÕ ĐẶC BIỆT KỲ SPRING 2022", "khanhdd12",
        "17:12:47 - 01/01/2022"),
    ContentHome(
        "THÔNG BÁO VỀ LỊCH HỌC CHÍNH THỨC VÀ THỜI GIAN ĐỔI LỊCH HỌC KỲ SPRING 2022",
        "khanhdd12",
        "08:58:31 - 31/12/2021"),
    ContentHome("Thông tin về điều kiện bắt buộc môn Tiếng Anh", "quanbm7",
        "11:16:07 - 05/01/2022"),
    ContentHome("Thông tin về điều kiện bắt buộc môn Tiếng Anh", "quanbm7",
        "11:16:07 - 05/01/2022"),
    ContentHome("Thông tin về điều kiện bắt buộc môn Tiếng Anh", "quanbm7",
        "11:16:07 - 05/01/2022"),
    ContentHome("Thông tin về điều kiện bắt buộc môn Tiếng Anh", "quanbm7",
        "11:16:07 - 05/01/2022"),
    ContentHome("Thông tin về điều kiện bắt buộc môn Tiếng Anh", "quanbm7",
        "11:16:07 - 05/01/2022"),
    ContentHome("Thông tin về điều kiện bắt buộc môn Tiếng Anh", "quanbm7",
        "11:16:07 - 05/01/2022"),
    ContentHome("Thông tin về điều kiện bắt buộc môn Tiếng Anh", "quanbm7",
        "11:16:07 - 05/01/2022"),
    ContentHome("Thông tin về điều kiện bắt buộc môn Tiếng Anh", "quanbm7",
        "11:16:07 - 05/01/2022"),
    ContentHome("Thông tin về điều kiện bắt buộc môn Tiếng Anh", "quanbm7",
        "11:16:07 - 05/01/2022"),
    ContentHome("Thông tin về điều kiện bắt buộc môn Tiếng Anh", "quanbm7",
        "11:16:07 - 05/01/2022"),
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
                padding: EdgeInsets.symmetric(vertical: 5),
                color: kGrey,
                child: ListView.builder(
                    itemCount: contenHomeDataa.length,
                    itemBuilder: (context, index) {
                      return ItemContentHome(
                          size: size, content: contenHomeDataa[index]);
                    })),
            Center(
              child: Text("Hoạt động"),
            ),
            Center(
              child: Text("Học phí"),
            ),
          ],
        ),
      ),
    );
  }
}
