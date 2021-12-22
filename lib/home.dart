// first page the user sees after splash screen
// holds the profile page and home page in it

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:myappp/HomePageData.dart';
import 'package:myappp/my_flutter_app_icons.dart';
import 'package:myappp/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final screens = [
    const HomePageData(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        // clip overflow content
        child: ClipRect(
          child: Scaffold(
            // the bottom nav
            bottomNavigationBar: CurvedNavigationBar(
              key: navigationKey,
              backgroundColor: Colors.transparent,
              height: 60.0,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 500),
              color: const Color(0xff011A2D),
              items: const [
                Icon(
                  MyFlutterApp.home,
                  size: 25.0,
                  color: Colors.white,
                ),
                Icon(
                  Icons.person,
                  size: 25.0,
                  color: Colors.white,
                ),
              ],
              index: index,
              onTap: (index) => setState(() => this.index = index),
            ),
            extendBody: true,
            appBar: AppBar(
              title: const Text(
                'LIVE R',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Caesar',
                  fontSize: 30.0,
                ),
              ),
              centerTitle: true,
              backgroundColor: const Color(0xff011A2D),
            ),
            // backgroundColor: Color(0xff3C1215),
            // backgroundColor: Color(0xff011A2D),
            backgroundColor: const Color(0xff02243D),
            body: screens[index],
          ),
        ),
      ),
    );
  }
}