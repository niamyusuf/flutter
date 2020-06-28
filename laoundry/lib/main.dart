import 'package:flutter/material.dart';
import 'package:loundry/pages/dasboard.dart';
import 'package:loundry/pages/home.dart';
import 'package:loundry/pages/main_tab.dart';
import 'package:loundry/pages/pesanan.dart';
import 'package:loundry/pages/profile.dart';
import 'pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Laundry App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      routes: {
        "/": (ctx) => LoginPage(),
        "/beranda": (ctx) => Beranda(),
        "/home": (ctx) => HomePage(),
        "/profile": (ctx) => ProfilePage(),
        "/pesanan": (ctx) => PesananPage(),
        "/utama": (ctx) => MainTabPage(),
      },
      // home: LoginPage(),
    );
  }
}
