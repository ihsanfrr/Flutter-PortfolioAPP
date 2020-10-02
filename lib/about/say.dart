import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant.dart';

class Say extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 24),
      margin: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
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
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: green),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/common/ihsan.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Ihsan Fajar R',
            style: poppinsM.copyWith(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'I am so happy because my app ready on time.',
            style: poppinsR.copyWith(fontSize: 10),
          )
        ],
      ),
    );
  }
}
