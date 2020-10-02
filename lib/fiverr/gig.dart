import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant.dart';

class Gig extends StatelessWidget {
  String title;
  String dollar;
  String image;

  Gig({this.title, this.dollar, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
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
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 222,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage('assets/common/$image.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 16, top: 16, bottom: 24),
              child: Text(
                title,
                style: poppinsM.copyWith(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: green,
                      size: 20,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '5.0',
                      style: poppinsM.copyWith(fontSize: 18, color: green),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'STARTING AT',
                      style: poppinsL.copyWith(
                        fontSize: 12,
                        color: green,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '\$$dollar',
                      style: poppinsB.copyWith(
                        fontSize: 22,
                        color: green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
