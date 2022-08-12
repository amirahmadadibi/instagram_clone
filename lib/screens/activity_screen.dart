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
      body: SafeArea(
        child: Container(
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
      ),
    );
  }
}
