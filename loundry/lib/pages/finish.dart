
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main_tab.dart';

class FinishPage extends StatefulWidget {
 static const routeName = 'finish';
 const FinishPage({Key key}) : super(key: key);
 @override
 _FinishPageState createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPage> {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.grey[350],
     appBar: AppBar(
       backgroundColor: Colors.blueGrey,
       leading: Icon(
         Icons.arrow_back_ios,
         color: Colors.transparent,
       ),
       title: Text(
         'Selesai',
         style: TextStyle(color: Colors.white),
       ),
     ),
     body: contentBody(context),
   );
 }

 Widget contentBody(BuildContext context) {
   return SafeArea(
     child: Stack(
       children: <Widget>[
         Padding(
           padding: const EdgeInsets.only(left: 16.0, right: 8.0),
           child: Column(
             children: <Widget>[
               SizedBox(height: 20),
               Container(
                 decoration: BoxDecoration(
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey[400],
                       blurRadius: 5.0,
                       spreadRadius: 0.0,
                       offset: Offset(4.0, 8.0),
                     )
                   ],
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(8.0),
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(
                     '"Pesanan Anda akan segera diproses, silahkan pantau di aplikasi di menu Pesanan"',
                     style: TextStyle(fontSize: 18),
                     textAlign: TextAlign.center,
                   ),
                 ),
               ),
             ],
           ),
         ),
         Positioned(
           left: 8.0,
           right: 8.0,
           bottom: 8.0,
           child: Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(8.0),
               color: Colors.blueGrey,
             ),
             child: FlatButton(
               child: Text(
                 'Selesai',
                 style: TextStyle(color: Colors.white),
               ),
               onPressed: () {
                 Navigator.of(context).push(
                   CupertinoPageRoute(
                     fullscreenDialog: true,
                     builder: (context) => MainTabPage(),
                   ),
                 );
               },
             ),
           ),
         ),
       ],
     ),
   );
 }
}

