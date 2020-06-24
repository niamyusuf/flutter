import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  Beranda({Key key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Padding(
       padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0),
       child: Stack(
         children: <Widget>[
           ListView.builder(
             itemCount: 1,
             itemBuilder: (context, idx){
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
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                    SizedBox(height: 8.0),
                    IconButton(icon: Icon(Icons.file_upload), onPressed: null)
                   ],
                 ),
               );
             })
         ],
       ),
       ),
    );
  }
}