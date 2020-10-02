import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class Who extends StatelessWidget {
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
            'Hi, i\'m Ihsan Fajar Ramadhan',
            style: poppinsS.copyWith(fontSize: 18, color: green),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Android Developer',
            style: poppinsB.copyWith(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'I\'m from Indonesia and I\'m a student\n',
                  style: poppinsR.copyWith(fontSize: 15, color: grey1),
                ),
                TextSpan(
                  text: 'at SMK 1 SUBANG. I build my own mobile\n',
                  style: poppinsR.copyWith(fontSize: 15, color: grey1),
                ),
                TextSpan(
                  text: 'development team ',
                  style: poppinsR.copyWith(fontSize: 15, color: grey1),
                ),
                TextSpan(
                  text: 'aarogan',
                  style: poppinsS.copyWith(
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                    color: Color(0XFF707070),
                  ),
                ),
                TextSpan(
                  text: ' since 2019.\n',
                  style: poppinsR.copyWith(fontSize: 15, color: grey1),
                ),
                TextSpan(
                  text: 'Now I look forward  to collaborate\n',
                  style: poppinsR.copyWith(fontSize: 15, color: grey1),
                ),
                TextSpan(
                  text: 'with you!',
                  style: poppinsR.copyWith(fontSize: 15, color: grey1),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          GestureDetector(
            onTap: () => _launchUrl(),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: 45,
              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  'Email me',
                  style: poppinsM.copyWith(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

void _launchUrl() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'ihsan.fajardan@gmail.com',
    queryParameters: {'subject': 'Hello\tIhsan\tFajar\tRamadhan'},
  );

  String url = params.toString();
  if (await canLaunch(url)) {
      await launch(url);
    } else {
      print( 'Could not launch $url');
    }
}
