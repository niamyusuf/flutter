import 'package:flutter/material.dart';
import 'package:loundry/pages/dasboard.dart';
import 'package:loundry/pages/home.dart';
import 'package:loundry/pages/main_tab.dart';
import 'package:loundry/pages/pesanan.dart';
import 'package:loundry/pages/profile.dart';
import 'package:loundry/pages/users/add_users.dart';
import 'pages/login.dart';
import 'pages/splass_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loundry App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      routes: {
        "/": (ctx) => SplashScreen(),
        "/login": (ctx) => LoginPage(),
        "/beranda": (ctx) => Beranda(),
        "/home": (ctx) => HomePage(),
        "/profile": (ctx) => ProfilePage(),
        "/pesanan": (ctx) => PesananPage(),
        "/utama": (ctx) => MainTabPage(),
        "/register": (ctx) => TambahUsers(),
      },
      // home: LoginPage(),
    );
  }
}
