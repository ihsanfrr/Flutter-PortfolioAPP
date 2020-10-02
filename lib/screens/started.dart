import 'package:flutter/material.dart';
import 'package:portfolio/services/AuthServices.dart';
import 'package:portfolio/shared/constant.dart';
import 'package:provider/provider.dart';

class Started extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 24, top: 50),
              child: Text(
                '/aarogan',
                style: pacifico.copyWith(
                  fontSize: 26,
                  color: green,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: MediaQuery.of(context).size.height * 0.17),
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
                          text: 'for\nfuture.',
                          style: josefin.copyWith(
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'This is a portfolio app, that I made to show clients when the Client requests my portfolio.',
                    style: poppinsR.copyWith(
                      fontSize: 17,
                      color: grey1,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.37,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/common/port.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 55,
              child: RaisedButton(
                onPressed: () async {
                  await Provider.of<AuthServices>(context, listen: false).login();
                },
                child: Text(
                  'GET STARTED',
                  style: poppinsM.copyWith(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                color: green,
              ),
            ),
          )
        ],
      ),
    );
  }
}
