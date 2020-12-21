import 'package:estudo_bottom_menu/custom_app_bar.dart';
import 'package:estudo_bottom_menu/pages/page2.dart';
import 'package:estudo_bottom_menu/pages/page1.dart';
import 'package:estudo_bottom_menu/pages/page3.dart';
import 'package:flutter/material.dart';

class BottomMenuPage extends StatefulWidget {
  static BottomMenuPageState bottomMenuPageState;

  @override
  BottomMenuPageState createState() {
    bottomMenuPageState = BottomMenuPageState();
    return bottomMenuPageState;
  }
}

class BottomMenuPageState<T extends StatefulWidget> extends State<T> {
  final List<Widget> _pages = [Page1(), Page2(), Page3()];

  int _currentIndex;
  Widget _currentBody;

  List<Widget> _subLayouts = [];

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _currentBody = _pages[_currentIndex];
  }

  pushLayout(Widget layout) {
    setState(() {
      _subLayouts.add(layout);
      _currentBody = layout;
    });
  }

  popLayout() {
    print('pop layout');
    setState(() {
      _subLayouts.removeLast();
      _currentBody =
          _subLayouts.length > 0 ? _subLayouts.last : _pages[_currentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    print('index: $_currentIndex');

    return Scaffold(
      appBar: CustomAppBar.returnAppBar(context,
          hadDrawer: _subLayouts.length == 0,
          subPage: _subLayouts.length > 0,
          title: "Page 1"),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() {
          _currentIndex = index;
          _currentBody = _pages[_currentIndex];
          _subLayouts.clear();
        }),
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black12,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.spa_outlined),
            activeIcon: Icon(
              Icons.spa,
            ),
            label: "Page 1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            activeIcon: Icon(Icons.people_alt),
            label: "Page 2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_mall_outlined),
            activeIcon: Icon(Icons.local_mall),
            label: "Page 3",
          ),
        ],
      ),
      body: _currentBody,
    );
  }
}
