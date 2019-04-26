import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/todaystory/todaystory.dart';

import 'browsing/browsing.dart';
import 'filters/filters.dart';
import 'howtomake/howtomake.dart';
import 'me/me.dart';

class UIKitPage extends StatefulWidget {
  @override
  _UIKitPageState createState() {
    return _UIKitPageState();
  }
}

class _UIKitPageState extends State<UIKitPage> {
  var _selectedIndex = 0;
  final _tabPages = [
    TodayStoryTabPage(),
    HowToMakeTabPage(),
    FiltersTabPage(),
    BrowsingTabPage(),
    MeTabPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('AAAA'),
//        centerTitle: true,
//      ),
      body: _tabPages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('主页')),
          BottomNavigationBarItem(icon: Icon(Icons.lightbulb_outline), title: Text('发现')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('搜索')),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text('购物车')),
          BottomNavigationBarItem(icon: Icon(Icons.supervisor_account), title: Text('我的')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.brown,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
