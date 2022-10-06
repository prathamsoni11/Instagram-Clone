import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:instagram_clone/constents/width_sized_box.dart';
import 'package:instagram_clone/screens/home_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text(
      'Index 1: Search',
    ),
    const Text(
      'Index 2: Reels',
    ),
    const Text(
      'Index 3: Favourite',
    ),
    const Text(
      'Index 4: Profile',
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'icons/home.png',
              ),
              size: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'icons/reels.png',
                ),
                size: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 13,
              backgroundImage: AssetImage('images/avatar.jpg'),
            ),
            label: '',
          ),
        ],
        onTap: (index) {
          _onItemTapped(index);
        },
      ),
    );
  }
}
