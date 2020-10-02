import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant.dart';

class Hire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 17, top: 24, bottom: 24),
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
            'Why Hire Me ?',
            style: poppinsB.copyWith(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/common/comu.png'),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Communicative',
                    style: poppinsM.copyWith(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 16,
                        color: green,
                      ),
                      Text(
                        ' 5',
                        style: poppinsR.copyWith(
                          fontSize: 16,
                          color: green,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/common/colab.png'),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Collaborative',
                    style: poppinsM.copyWith(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 16,
                        color: green,
                      ),
                      Text(
                        ' 5',
                        style: poppinsR.copyWith(
                          fontSize: 16,
                          color: green,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/common/mana.png'),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Management Freak',
                    style: poppinsM.copyWith(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 16,
                        color: green,
                      ),
                      Text(
                        ' 4.5',
                        style: poppinsR.copyWith(
                          fontSize: 16,
                          color: green,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/common/fav.png'),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Client\'s Favourite',
                    style: poppinsM.copyWith(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 16,
                        color: green,
                      ),
                      Text(
                        ' 5',
                        style: poppinsR.copyWith(
                          fontSize: 16,
                          color: green,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
