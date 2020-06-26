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
       padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
       child: Stack(
         children: <Widget>[
          //  Container(
          //   height: MediaQuery.of(context).size.height/1.5, //2.4
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     image: DecorationImage(image: AssetImage('assets/images/bg.jpg'),
          //     fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          Positioned(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: 
              Container(
                child: Card(
                  margin: const EdgeInsets.all(1),
                  elevation: 1,
                  child: Padding(padding: const EdgeInsets.all(1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: 
                          Row(
                            children: <Widget>[
                              Text("NAMA", style: TextStyle(fontSize: 20, 
                              fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),),
         ],
       ),
       ),
    );
  }
}