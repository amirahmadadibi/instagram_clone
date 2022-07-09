import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [_getImageContainer(), _getContainerBox()],
      ),
    );
  }

  Widget _getContainerBox() {
    return Column(
      children: [
        Expanded(child: Container()),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        ))
      ],
    );
  }

  Widget _getImageContainer() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: 80,
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('images/rocket.png'),
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
