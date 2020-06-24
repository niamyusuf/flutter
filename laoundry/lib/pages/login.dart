import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main_tab.dart';
import 'package:loundry/widgets/validate.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'login';
  const LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userController = TextEditingController();
  final passController = TextEditingController();
  bool isValUsername = false;
  bool isValPassword = false;

  bool lockStatus = false;
  bool isSecure = true;
  void lockTapped(bool status) {
    setState(() {
      if (isSecure) {
        isSecure = false;
      } else {
        isSecure = true;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    userController.addListener(userChange);
    passController.addListener(passChange);
  }

  void userChange() {
    setState(() {
      isValUsername = false;
    });
  }

  void passChange() {
    setState(() {
      isValPassword = false;
    });
  }

  void loginTapped(BuildContext context) {
    setState(() {
      if (userController.text.isEmpty) {
        isValUsername = true;
      } else if (passController.text.isEmpty) {
        isValPassword = true;
      } else {
        Navigator.of(context).push(
          CupertinoPageRoute(
            fullscreenDialog: true,
            builder: (context) => MainTabPage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            // child: contentBody(context),
          ),
          SingleChildScrollView(
            child: contentBody(context),)
        ],
      ),
    );
  }

  Widget contentBody(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30),
                Icon(
                  Icons.bubble_chart,
                  color: Colors.blueGrey,
                  size: 38,
                ),
                SizedBox(height: 30),
                Text(
                  'Selamat Datang,',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Login untuk masuk aplikasi',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(height: 80),
                TextField(
                  autocorrect: false,
                  controller: userController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                if (isValUsername)
                  Validate(message: 'Email tidak boleh kosong'),
                TextField(
                  obscureText: isSecure,
                  autocorrect: false,
                  controller: passController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: (isSecure)
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                      onPressed: () => lockTapped(lockStatus),
                    ),
                  ),
                ),
                if (isValPassword)
                  Validate(message: 'Password tidak boleh kosong'),
              ],
            ),
            Positioned(
              left: 8.0,
              right: 8.0,
              bottom: 16.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.blueGrey,
                ),
                child: FlatButton(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => loginTapped(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}