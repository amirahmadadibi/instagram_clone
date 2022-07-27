import 'dart:ui';

import 'package:flutter/material.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({this.scrollController, Key? key}) : super(key: key);

  final ScrollController? scrollController;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 300,
            child: _getGridContent()),
      ),
    );
  }

  Widget _getGridContent() {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        GridView.builder(
          controller: scrollController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 50),
          itemCount: 30,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text('test'),
            );
          },
        ),
        Positioned(
            bottom: 0,
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(onPressed: () {}, child: Text('test'))))
      ],
    );
  }
}
