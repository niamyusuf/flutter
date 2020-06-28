import 'package:flutter/material.dart';
import 'dasboard.dart';
import 'home.dart';
import 'pesanan.dart';
import 'profile.dart';

class MainTabPage extends StatefulWidget {
  // static const routeName = 'main-tab';
  const MainTabPage({Key key}) : super(key: key);
  @override
  _MainTabPageState createState() => _MainTabPageState();
}

class _MainTabPageState extends State<MainTabPage> {
  bool isTopBar = true;
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
      if (_selectedTabIndex == 2) {
        isTopBar = false;
      } else {
        isTopBar = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = [
      Beranda(),
      HomePage(),
      // PesananPage(),
      ProfilePage(),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Beranda'),
        activeIcon: Icon(Icons.home, color: Colors.orange),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add_circle),
        title: Text('Transaksi'),
        activeIcon: Icon(Icons.add_circle, color: Colors.orange),
      ),
      // BottomNavigationBarItem(
      //   icon: Icon(Icons.track_changes),
      //   title: Text('Pesanan'),
      //   activeIcon: Icon(Icons.track_changes, color: Colors.orange),
      // ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text('Akun'),
        activeIcon: Icon(Icons.person, color: Colors.orange),
      ),
    ];

    final _bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        // top: isTopBar,
        child: _listPage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
