import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Center(
          child: _getStoryBox(),
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
      dashPattern: [50, 10],
      strokeWidth: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          height: 58,
          width: 58,
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
