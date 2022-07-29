import 'dart:ui';

import 'package:flutter/material.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({this.controller, Key? key}) : super(key: key);
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
        child: Container(
          color: Color.fromRGBO(255, 255, 255, 0.09),
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: 300,
          child: _getContent(),
        ),
      ),
    );
  }

  Widget _getContent() {
    // return GridView.builder(
    //     controller: controller,
    //     itemCount: 100,
    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisSpacing: 20,
    //       mainAxisSpacing: 20,
    //       crossAxisCount: 4,
    //     ),
    //     itemBuilder: (BuildContext context, index) {
    //       return Container(
    //         color: Colors.red,
    //       );
    //     });

    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverGrid(
          delegate: SliverChildBuilderDelegate(((context, index) {
            return Container(
              color: Colors.red,
            );
          })),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 20),
        )
      ],
    );
  }
}
