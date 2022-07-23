import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0xff1C1F2E),
        elevation: 0,
        title: Container(
          width: 128,
          height: 24,
          child: Image.asset('images/moodinger_logo.png'),
        ),
        actions: [
          Container(
            height: 24,
            width: 24,
            margin: EdgeInsets.only(right: 18),
            child: Image.asset('images/icon_direct.png'),
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                _getStoryBox(),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'amirhamadadibii',
                        style: TextStyle(
                            fontFamily: 'GB',
                            color: Colors.white,
                            fontSize: 12),
                      ),
                      Text(
                        'امیراحمدادیبی برنامه‌نویس موبایل',
                        style: TextStyle(color: Colors.white, fontFamily: 'SM'),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Image.asset('images/icon_menu.png')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getStoryBox() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      padding: EdgeInsets.all(4),
      color: Color(0xffF35383),
      dashPattern: [40, 10],
      strokeWidth: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          height: 38,
          width: 38,
          child: Image.asset('images/profile.png'),
        ),
      ),
    );
  }

  Widget _getAddSotryBox() {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Padding(
        padding: EdgeInsets.all(2),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xff1C1F2E),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset('images/icon_plus.png'),
        ),
      ),
    );
  }
}
