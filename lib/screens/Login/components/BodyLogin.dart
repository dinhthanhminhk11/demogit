import 'dart:math';
import 'dart:ui';
import "package:appappolyver2/Color.dart";
import 'package:appappolyver2/screens/Home/HomeScreens.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';

class BodyLogin extends StatefulWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  _BodyLoginState createState() => _BodyLoginState();
}

googleLogin() async {
  print("object");
  GoogleSignIn _googleSignIn = GoogleSignIn(
      // clientId:
      //     '683722468823-a490iflf0uo5dij2gftos1qs2ehrhhqi.apps.googleusercontent.com',
      // scopes: [
      //   'email',
      //   'https://www.googleapis.com/auth/userinfo.profile',
      // ],
      );
  try {
    var reslut = await _googleSignIn.signIn();
    print(reslut);
  } catch (error) {
    print(error);
    print(error);
    print(error);
    print(error);
    print("đĩ mẹ lỗi");
  }
}

class _BodyLoginState extends State<BodyLogin> {
  GoogleSignInAccount? _ggAccount;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    List<String> listitem = [
      "FPT Polytechnic Hà Nội",
      "FPT Polytechnic Đà Nẵng",
      "FPT Polytechnic Hồ Chí Minh",
      "FPT Polytechnic Tây Nguyên",
      "FPT Polytechnic Cần Thơ",
      "FPT Polytechnic HiTech",
    ];
    String dropdownValue = 'Lựa chọn cơ sở của bạn';

    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      child: Column(
        children: [
          Expanded(
            // child: Container(
            //   child: SizedBox(
            //     child: Carousel(
            //       images: [
            //         Image.asset("assets/images/newyear.png"),
            //         Image.asset("assets/images/cnttver2.png"),
            //         Image.asset("assets/images/designner.png"),
            //         Image.asset("assets/images/kinhte.png"),
            //         Image.asset("assets/images/dulich.png"),
            //         Image.asset("assets/images/lamdep.png"),
            //       ],
            //       dotSize: 4.0,
            //       dotSpacing: 15.0,
            //       dotColor: Colors.grey[500],
            //       indicatorBgPadding: 5.0,
            //       dotBgColor: Colors.transparent,
            //       borderRadius: true,
            //       moveIndicatorFromBottom: 180.0,
            //       noRadiusForIndicator: true,
            //     ),
            //   ),
            // ),
            child: Image.asset("assets/images/icon2a.png"),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Đăng nhập để tiếp tục",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width, //matchpen android

                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        )),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(border: InputBorder.none),
                      value: null,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      dropdownColor: Colors.white,
                      hint: Text(
                        "Lựa chọn cơ sở của bạn test -ver2",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      items: listitem.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: kOrange, fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }).toList(),
                      selectedItemBuilder: (BuildContext context) {
                        return listitem.map((String value) {
                          return Text(value,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16));
                        }).toList();
                      },
                      onChanged: (String? newValue) {
                        setState(() {
                          print(newValue);
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width, //matchpen android

                    child: RaisedButton.icon(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      onPressed: googleLogin,
                      //   () {
                      // Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HomeBody()),
                      //   (Route<dynamic> route) => false,
                      // );
                      // _handleSignIn();
                      // },
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      label: Text(
                        'Đăng nhập bằng google',
                        style: TextStyle(color: kOrange, fontSize: 16),
                      ),
                      icon: SvgPicture.asset("assets/icons/icongg.svg",
                          color: kOrange, width: 24, height: 24),
                      textColor: kOrange,
                      splashColor: Colors.white,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 2,
                            width: 10,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Hoặc",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 2,
                            width: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width, //matchpen android

                    child: RaisedButton.icon(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      onPressed: () {
                        print('Button Clicked.');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      label: Text(
                        'Đăng nhập bằng tài khoản phụ huynh',
                        style: TextStyle(color: kOrange, fontSize: 16),
                      ),
                      icon: Icon(Icons.phone),
                      textColor: kOrange,
                      splashColor: Colors.white,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      "Copyright © FPT",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child:
                Text("Version 1.0", style: TextStyle(color: Colors.grey[500])),
          )
        ],
      ),
    );
  }
}
