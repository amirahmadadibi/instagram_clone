import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled) {
          return [
            SliverAppBar(
              // pinned: true,
              toolbarHeight: 80,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 18, top: 18),
                  child: Icon(Icons.menu),
                )
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(10),
                child: Container(
                  height: 14,
                  decoration: BoxDecoration(
                    color: Color(0xff1C1F2E),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
              ),
              backgroundColor: Color(0xff1C1F2E),
              expandedHeight: 170,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/item1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: _getHeaderProfile(),
            ),
            SliverPersistentHeader(
                pinned: true, floating: true, delegate: TabBarViewDelegate())
          ];
        },
        body: Container(color: Colors.red),
      ),
    );
  }

  Widget _getHeaderProfile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color(0xffF35383),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('images/profile.png'),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 70,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'امیراحمدادیبی',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'SM', fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'amriahmadadibi',
                    style: TextStyle(
                        color: Color(0xffC5C5C5),
                        fontFamily: 'GB',
                        fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          Image.asset('images/icon_profile_edit.png')
        ],
      ),
    );
  }
}

class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: ClipRRect(
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.asset('images/item3.png'),
        ),
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 300;

  @override
  // TODO: implement minExtent
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
