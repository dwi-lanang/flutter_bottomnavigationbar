import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import './section_one.dart';
import './section_two.dart';

class NavigationBar extends StatefulWidget {

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar>{
  int _currentIndex = 0;

  final List<Widget> _section = [
    SectionOne(),
    SectionTwo()
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: null,
        body: _section[_currentIndex],
        bottomNavigationBar: ConvexAppBar(
          elevation: 0.5,
          style: TabStyle.reactCircle,
          backgroundColor: Colors.white,
          activeColor: Colors.black54,
          color: Colors.black87,
          items: [
            TabItem(icon: Icons.home),
            TabItem(icon: Icons.settings)
          ],
          initialActiveIndex: _currentIndex,
          onTap: OnTabSection,
        ),
    );
  }

  void OnTabSection(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}