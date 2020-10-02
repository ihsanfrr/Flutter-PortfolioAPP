import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant.dart';

class Skill extends StatelessWidget {
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
            'Tools & Skills',
            style: poppinsB.copyWith(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/logo/fig.png')),
                  borderRadius: BorderRadius.circular(4)
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 8),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/logo/xd.png')),
                  borderRadius: BorderRadius.circular(4)
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 8),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/logo/ps.png')),
                  borderRadius: BorderRadius.circular(4)
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'UI UX Mobile Design',
            style: poppinsM.copyWith(fontSize: 16),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/logo/laravel.png')),
                  borderRadius: BorderRadius.circular(4)
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 8),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/logo/lumen.png')),
                  borderRadius: BorderRadius.circular(4)
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Rest API Development',
            style: poppinsM.copyWith(fontSize: 16),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/logo/flutter.png')),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Android Development',
            style: poppinsM.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
