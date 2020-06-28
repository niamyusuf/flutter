import 'package:flutter/material.dart';

class TambahUsers extends StatefulWidget {
  TambahUsers({Key key}) : super(key: key);

  @override
  _TambahUsersState createState() => _TambahUsersState();
}

class _TambahUsersState extends State<TambahUsers> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  autocorrect: false,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person),
                    labelText: "Nama",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextField(
                  autocorrect: false,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextField(
                  autocorrect: false,
                  obscureText: isSecure,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: (isSecure)
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                      // color: Colors.orange[200],
                      onPressed: () => lockTapped(lockStatus),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orangeAccent),
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20, bottom: 5, left: 15.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: RaisedButton(
                      color: Colors.orangeAccent,
                      // onPressed: () => loginTapped(context),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Daftar",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
