import 'package:flutter/material.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color(0xff1C1F2E),
              height: 70,
              child: TabBar(
                controller: _tabController,
                labelStyle: TextStyle(fontSize: 20, fontFamily: 'GB'),
                indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                indicatorWeight: 4,
                indicatorColor: Color(0xffF35383),
                tabs: [
                  Tab(
                    text: 'Following',
                  ),
                  Tab(
                    text: 'You',
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: [
                CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return _getRow();
                      }, childCount: 100),
                    )
                  ],
                ),
                CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return Text('AmirahmadAdibi');
                      }, childCount: 100),
                    )
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget _getRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      child: Row(
        children: [
          Container(
            height: 6,
            width: 6,
            decoration:
                BoxDecoration(color: Color(0xffF35383), shape: BoxShape.circle),
          ),
          SizedBox(
            width: 7,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('images/item8.png'),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'amirahmadadibii',
                    style: TextStyle(
                        fontFamily: 'GB', fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Started Following',
                    style: TextStyle(
                        fontFamily: 'GM',
                        fontSize: 12,
                        color: Color(0xffC5C5C5)),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'you',
                    style: TextStyle(
                        fontFamily: 'GM',
                        fontSize: 12,
                        color: Color(0xffC5C5C5)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '3min',
                    style: TextStyle(
                        fontFamily: 'GB',
                        fontSize: 12,
                        color: Color(0xffC5C5C5)),
                  )
                ],
              )
            ],
          ),
          Spacer(),

          OutlinedButton(
            onPressed: () {},
            child: Text(
              'Message',
              style: TextStyle(
                  fontFamily: 'GB', fontSize: 12, color: Color(0xffC5C5C5)),
            ),
            style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color(0xffC5C5C5), width: 2)),
          )
          // SizedBox(
          //   height: 40,
          //   width: 40,
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.all(Radius.circular(10)),
          //     child: FittedBox(
          //       fit: BoxFit.cover,
          //       child: Image.asset('images/item1.png'),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
