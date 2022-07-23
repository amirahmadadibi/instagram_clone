import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Center(
          child: Container(
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
          ),
        ),
      ),
    );
  }
}
