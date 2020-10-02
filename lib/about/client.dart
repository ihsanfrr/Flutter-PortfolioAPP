import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant.dart';
import 'package:portfolio/about/say.dart';

class Client extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 17, top: 24, right: 17, bottom: 24),
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'What our client say ?',
            style: poppinsB.copyWith(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Say(),
                SizedBox(
                  width: 8,
                ),
                Say(),
                SizedBox(
                  width: 8,
                ),
                Say()
              ],
            ),
          )
        ],
      ),
    );
  }
}
