import 'package:flutter/material.dart';
import 'package:portfolio/about/client.dart';
import 'package:portfolio/about/hire.dart';
import 'package:portfolio/about/skill.dart';
import 'package:portfolio/about/touch.dart';
import 'package:portfolio/about/who.dart';
import 'package:portfolio/about/why.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Who(),
              Why(),
              Hire(),
              Client(),
              Skill(),
              Touch()
            ],
          ),
        ),
      ),
    );
  }
}
