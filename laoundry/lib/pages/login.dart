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
        Navigator.of(context).pushNamed("/utama");
        // Navigator.of(context).push(
        //   CupertinoPageRoute(
        //     fullscreenDialog: true,
        //     builder: (context) => MainTabPage(),
        //   ),
        // );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: contentBody(context),
        ),
      ),
    );
  }

  Widget contentBody(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 1,
            decoration: BoxDecoration(
              color: Colors.amber.shade50,
              image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'),
                // fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                margin: const EdgeInsets.all(1),
                color: Colors.amber.shade50,
                elevation: 8, //ketebalannya
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 10),
                      //   child: Text(
                      //     "Login",
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.bold, fontSize: 25),
                      //   ),
                      // ),
                      //textbox
                      if (isValUsername)
                        Validate(message: 'Email tidak boleh kosong'),
                      TextField(
                        autocorrect: false,
                        controller: userController,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.email,
                            color: Colors.orange[200],
                          ),
                          labelText: "Email", //set labelnya
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      //Password
                      TextField(
                        obscureText: isSecure,
                        autocorrect: false,
                        controller: passController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: (isSecure)
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                            color: Colors.orange[200],
                            onPressed: () => lockTapped(lockStatus),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.orangeAccent),
                          ),
                          labelText: "Password", //set labelnya
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      if (isValPassword)
                        Validate(message: 'Password tidak boleh kosong'),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 5, left: 15.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: RaisedButton(
                            color: Colors.orangeAccent,
                            onPressed: () => loginTapped(context),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //untuk forgot password
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 5, right: 15.0),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                              color: Colors.blue[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // return SafeArea(
    //     child: Padding(
    //       padding: const EdgeInsets.only(left: 16.0, right: 16.0),
    //       child: Stack(
    //         children: <Widget>[
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: <Widget>[
    //               SizedBox(height: 30),
    //               Icon(
    //                 Icons.bubble_chart,
    //                 color: Colors.blueGrey,
    //                 size: 38,
    //               ),
    //               SizedBox(height: 30),
    //               Text(
    //                 'Selamat Datang,',
    //                 style: TextStyle(fontSize: 24),
    //               ),
    //               SizedBox(height: 8.0),
    //               Text(
    //                 'Login untuk masuk aplikasi',
    //                 style: TextStyle(color: Colors.grey[700]),
    //               ),
    //               SizedBox(height: 80),
    //               TextField(
    //                 autocorrect: false,
    //                 controller: userController,
    //                 decoration: InputDecoration(
    //                   labelText: 'Email',
    //                 ),
    //               ),
    //               if (isValUsername)
    //                 Validate(message: 'Email tidak boleh kosong'),
    //               TextField(
    //                 obscureText: isSecure,
    //                 autocorrect: false,
    //                 controller: passController,
    //                 decoration: InputDecoration(
    //                   labelText: 'Password',
    //                   suffixIcon: IconButton(
    //                     icon: (isSecure)
    //                         ? Icon(Icons.visibility)
    //                         : Icon(Icons.visibility_off),
    //                     onPressed: () => lockTapped(lockStatus),
    //                   ),
    //                 ),
    //               ),
    //               if (isValPassword)
    //                 Validate(message: 'Password tidak boleh kosong'),
    //             ],
    //           ),

    //               Positioned(

    //                 child: Container(

    //                   decoration: BoxDecoration(

    //                       borderRadius: BorderRadius.circular(8.0),

    //                       color: Colors.blueGrey,

    //                   ),

    //                   child: RaisedButton(
    //                       child: Text(
    //                         'Login',
    //                         style: TextStyle(color: Colors.white),
    //                       ),
    //                       onPressed: () => loginTapped(context),
    //                   ),
    //                 ),
    //                 ),
    //         ],

    //       ),
    //     ),
    //   );
  }
}
