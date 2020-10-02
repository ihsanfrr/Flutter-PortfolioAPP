import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant.dart';

class Xd extends StatelessWidget {
  String title;
  String tools;
  String image;

  Xd({this.title, this.tools, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 28, bottom: 28),
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: const Offset(0.4, 0.8),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: poppinsM.copyWith(
              fontSize: 18,
              color: green,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            tools,
            style: poppinsM.copyWith(
              fontSize: 14,
              color: grey1,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: 80,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/common/$image.png',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}