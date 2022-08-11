import 'package:flutter/material.dart';

class AddContentScreen extends StatelessWidget {
  const AddContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }

  Widget _getSelectedImageContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      height: 394,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.asset('images/item8.png'),
        ),
      ),
    );
  }

  Widget _getHeaderSection() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 27, horizontal: 18),
      child: Row(
        children: [
          Text(
            'Post',
            style:
                TextStyle(color: Colors.white, fontFamily: 'GB', fontSize: 24),
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset('images/icon_arrow_down.png'),
          Spacer(),
          Text(
            'Next',
            style:
                TextStyle(color: Colors.white, fontFamily: 'GB', fontSize: 16),
          ),
          SizedBox(
            width: 5,
          ),
          Image.asset('images/icon_arrow_right_box.png')
        ],
      ),
    );
  }
}
