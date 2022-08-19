import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_basketball), label: 'Item1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_basketball), label: 'Item2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_basketball), label: 'Item3'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_basketball), label: 'Item4'),
        ],
      ),
      body: Center(
        child: Text('text'),
      ),
    );
  }
}
