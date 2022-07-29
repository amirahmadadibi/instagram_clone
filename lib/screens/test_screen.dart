import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  ((context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.red,
                      height: 100,
                    );
                  }),
                  childCount: 100,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4))
          ],
        ),
      ),
    );
  }

  Widget _getSimpleSliverListDelegate() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 100,
            color: Colors.red,
          );
        },
        childCount: 10,
      ),
    );
  }

  Widget _getExplicitSliverDelegate() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(color: Colors.red, height: 150.0),
          Container(color: Colors.purple, height: 150.0),
          Container(color: Colors.green, height: 150.0),
        ],
      ),
    );
  }
}
