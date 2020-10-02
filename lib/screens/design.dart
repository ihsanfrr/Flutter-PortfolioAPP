import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/design/xd.dart';
import 'package:portfolio/shared/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class Design extends StatelessWidget {
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
              Xd(title: 'Pomodoro & Todo App', tools: 'Adobe XD', image: 'todo',),
              SizedBox(
                height: 24,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'More Design in ',
                        style: poppinsR.copyWith(
                          fontSize: 14,
                          color: grey1,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () => _launchUrl(),
                        text: 'My Dribbble',
                        style: poppinsR.copyWith(
                          fontSize: 14,
                          color: green,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

_launchUrl() async {
  const url = 'https://www.dribbble.com/ihsanfrr/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}