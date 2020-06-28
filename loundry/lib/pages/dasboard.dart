import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  Beranda({Key key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading:
      //       // new Row(
      //       //   mainAxisAlignment: MainAxisAlignment.start,
      //       //   children: <Widget>[
      //       //     Image.asset(
      //       //       "assets/images/bg.jpg",
      //       //       fit: BoxFit.cover,
      //       //     ),
      //       //     // Container(
      //       //     //     padding: const EdgeInsets.all(1.0), child: Text('Solid Shop'))
      //       //   ],
      //       // ),
      //       Icon(Icons.home, color: Colors.black),
      //   elevation: 0,
      //   backgroundColor: Colors.orangeAccent,
      //   title: Text("Dasboard"),
      // ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            judul(),
            Flexible(
              child: menu(),
            ),
          ],
        ),
        // Container(
        //   child: ListView.builder(
        //     itemCount: 1,
        //     itemBuilder: (context, idx) {
        //       return Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: <Widget>[
        //           // SizedBox(height: 8.0),
        //           judul(),
        //         ],
        //       );
        //     },
        //   ),
        // ),
      ),
    );
  }

  Widget menu() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      color: Colors.grey[300],
      child: GridView.count(
        crossAxisCount: 4,
        padding: EdgeInsets.all(3),
        children: <Widget>[
          makeDasboardItem("Tambah Member", Icons.people_outline, ""),
          makeDasboardItem("Transaksi", Icons.add_shopping_cart, "/home"),
          makeDasboardItem(
              "Keuangan", Icons.account_balance_wallet, "/pesanan"),
          makeDasboardItem("List", Icons.view_list, ""),
          makeDasboardItem("List", Icons.payment, "/profile")
        ],
      ),
    );
  }

  Card makeDasboardItem(String title, IconData icon, String halaman) {
    return Card(
      elevation: 2.0,
      color: Colors.white,
      margin: new EdgeInsets.all(8.0),
      child: Container(
        child: new InkWell(
          splashColor: Colors.amber.shade900,
          onTap: () {
            Navigator.of(context).pushNamed(halaman);
            // Navigator.of(context).push(
            //   CupertinoPageRoute(
            //     fullscreenDialog: true,
            //     builder: (context) => ,
            //   ),
            // );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              SizedBox(height: 5.0),
              Center(
                child: Icon(
                  icon,
                  size: 30,
                  color: Colors.orangeAccent,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              new Center(
                child: new Text(
                  title,
                  style: new TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget judul() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey[400],
          blurRadius: 5.0,
          spreadRadius: 0.0,
          offset: Offset(4.0, 8.0),
        )
      ],
      color: Colors.orange,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 8.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.bubble_chart, color: Colors.grey[600]),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Clean Laundry',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'Bersih seketika dan wangi sepanjang hari',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey[700],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
        ],
      ),
    ),
  );
}
