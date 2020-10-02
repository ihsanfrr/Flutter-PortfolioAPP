import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class Touch extends StatelessWidget {
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
            'Get in touch',
            style: poppinsB.copyWith(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'For business inquiry please send\n',
                  style: poppinsR.copyWith(
                    fontSize: 16,
                    color: grey1,
                  ),
                ),
                TextSpan(
                  text: 'email to ',
                  style: poppinsR.copyWith(
                    fontSize: 16,
                    color: grey1,
                  ),
                ),
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => _launchUrl(),
                  text: 'Ihsan.fajardan@gmail.com',
                  style: poppinsR.copyWith(
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    color: grey1,
                  ),
                )
              ],
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
    print('Could not launch $url');
  }
}
