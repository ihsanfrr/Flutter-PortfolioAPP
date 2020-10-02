import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/fiverr/gig.dart';
import 'package:portfolio/shared/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class Fiverr extends StatelessWidget {
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
              Gig(
                title: 'I will develop android app\nusing flutter',
                dollar: '100',
                image: 'fiver'
              ),
              Gig(
                title:
                    'I will convert UI Design to\nandroid app using flutter',
                dollar: '10',
                image: 'fiverr'
              ),
              Gig(
                title:
                    'I will design a mobile app with\nbest ui ux',
                dollar: '8',
                image: 'fiverrr'
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Lets go to ',
                        style: poppinsR.copyWith(
                          fontSize: 14,
                          color: grey1,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => _launchUrl(),
                        text: 'My Fiverr',
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
  const url = 'https://www.fiverr.com/ihsanfrr';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}