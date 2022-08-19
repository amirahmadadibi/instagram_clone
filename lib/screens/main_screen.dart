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
        backgroundColor: Colors.green,
        currentIndex: _selectedBottomNavigationItem,
        onTap: (int index) {
          setState(() {
            _selectedBottomNavigationItem = index;
          });
        },
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        selectedItemColor: Colors.red,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        //
        unselectedFontSize: 12,
        unselectedItemColor: Colors.white,
        //
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_basketball),
            label: 'Item1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_basketball),
            label: 'Item2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_basketball),
            label: 'Item3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_basketball),
            label: 'Item4',
          ),
        ],
      ),
      body: getLayout().elementAt(_selectedBottomNavigationItem),
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
