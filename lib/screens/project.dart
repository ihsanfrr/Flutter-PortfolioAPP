import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/project/app.dart';
import 'package:portfolio/shared/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatelessWidget {
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
              App(
                title: 'Covid 19 App',
                tools: 'Flutter & Public API',
                image: 'covid',
              ),
              App(
                title: 'Pomodoro & Todo App',
                tools: 'Flutter & Firebase',
                image: 'todo',
              ),
              App(
                title: 'MyQuran App',
                tools: 'Flutter & Public API',
                image: 'myquran',
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'More Project in ',
                        style: poppinsR.copyWith(
                          fontSize: 14,
                          color: grey1,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => _launchUrl(),
                        text: 'My Github',
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
  const url = 'https://www.github.com/ihsanfrr/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
