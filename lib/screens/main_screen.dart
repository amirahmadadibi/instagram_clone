import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigationItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff1C1F2E),
        currentIndex: _selectedBottomNavigationItem,
        onTap: (int index) {
          setState(() {
            _selectedBottomNavigationItem = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_home.png'),
            activeIcon: Image.asset('images/icon_active_home.png'),
            label: 'Item1',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_search_navigation.png'),
            activeIcon: Image.asset('images/icon_search_navigation_active.png'),
            label: 'Item2',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_add_navigation.png'),
            activeIcon: Image.asset('images/icon_add_navigation_active.png'),
            label: 'Item3',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_activity_navigation.png'),
            activeIcon:
                Image.asset('images/icon_activity_navigation_active.png'),
            label: 'Item4',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Color(0xffC5C5C5),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('images/profile.png'),
                ),
              ),
            ),
            activeIcon: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Color(0xffF35383),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('images/profile.png'),
                ),
              ),
            ),
            label: 'Item4',
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedBottomNavigationItem,
        children: getLayout(),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      Container(
        color: Colors.red,
        child: Center(child: TextField()),
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.yellow,
      ),
    ];
  }
}
