import 'package:flutter/material.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/fiverr.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/design.dart';
import 'package:portfolio/screens/project.dart';
import 'package:portfolio/shared/constant.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  bool _color0 = true;
  bool _color1 = false;
  bool _color2 = false;
  bool _color3 = false;
  bool _color4 = false;

  List _page = <Widget>[
    About(),
    Project(),
    Design(),
    Fiverr(),
    Contact(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(170),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: Container(
            margin: EdgeInsets.only(left: 30, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Think ',
                        style: josefin.copyWith(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '& develop ',
                        style: pacifico.copyWith(
                          fontSize: 30,
                          color: green,
                        ),
                      ),
                      TextSpan(
                        text: 'for\nfuture',
                        style: josefin.copyWith(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 42,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = 0;
                            _color0 = true;
                            _color1 = false;
                            _color2 = false;
                            _color3 = false;
                            _color4 = false;
                          });
                        },
                        child: Text(
                          'ABOUT ME',
                          style: poppinsM.copyWith(
                            fontSize: 16,
                            color: _color0 ? grey : grey1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = 1;
                            _color0 = false;
                            _color1 = true;
                            _color2 = false;
                            _color3 = false;
                            _color4 = false;
                          });
                        },
                        child: Text(
                          'PROJECT',
                          style: poppinsM.copyWith(
                            fontSize: 16,
                            color: _color1 ? grey : grey1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = 2;
                            _color0 = false;
                            _color1 = false;
                            _color2 = true;
                            _color3 = false;
                            _color4 = false;
                          });
                        },
                        child: Text(
                          'UI DESIGN',
                          style: poppinsM.copyWith(
                            fontSize: 16,
                            color: _color2 ? grey : grey1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = 3;
                            _color0 = false;
                            _color1 = false;
                            _color2 = false;
                            _color3 = true;
                            _color4 = false;
                          });
                        },
                        child: Text(
                          'FIVERR',
                          style: poppinsM.copyWith(
                            fontSize: 16,
                            color: _color3 ? grey : grey1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = 4;
                            _color0 = false;
                            _color1 = false;
                            _color2 = false;
                            _color3 = false;
                            _color4 = true;
                          });
                        },
                        child: Text(
                          'CONTACT',
                          style: poppinsM.copyWith(
                            fontSize: 16,
                            color: _color4 ? grey : grey1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: _page[_currentIndex],
    );
  }
}
