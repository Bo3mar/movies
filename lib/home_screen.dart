import 'package:flutter/material.dart';
import 'package:movies/search/search_tab.dart';
import 'package:movies/watch-list/watchList_tab.dart';

import 'browse/browse_tab.dart';
import 'home/home_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xff121312),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xffFFBB3B),
          unselectedItemColor: Color(0xffC6C6C6),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icon/Home.png'),
                  size: 45,
                ),
                label: 'Home',
                backgroundColor: Color(0xff1A1A1A)),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icon/Search.png'),
                  size: 45,
                ),
                label: 'search',
                backgroundColor: Color(0xff1A1A1A)),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icon/browse.png'),
                  size: 45,
                ),
                label: 'browse',
                backgroundColor: Color(0xff1A1A1A)),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icon/watchlist.png'),
                  size: 45,
                ),
                label: 'watchlist',
                backgroundColor: Color(0xff1A1A1A)),
          ],
        ),
        body: tabs[currentIndex],
      ),
    );
  }

  var tabs = [HomeTab(), SearchTab(), BrowseTab(), WatchListTab()];
}
