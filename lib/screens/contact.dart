import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
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
              Container(
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
                      'Have a great project ?',
                      style: poppinsB.copyWith(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () => _launchMail(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 16),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/logo/mail.png')),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Text(
                            'Email',
                            style: poppinsM.copyWith(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    GestureDetector(
                      onTap: () => _launchIg(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 16),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/logo/ig.png')),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Text(
                            'Instagram',
                            style: poppinsM.copyWith(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    GestureDetector(
                      onTap: () => _launchWa(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 16),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/logo/wa.png')),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Text(
                            'WhatsApp',
                            style: poppinsM.copyWith(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _launchMail() async {
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

_launchIg() async {
  const url = 'https://www.instagram.com/dev.ihsanfrr/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchWa() async {
  const url =
      'https://api.whatsapp.com/send?phone=628990671252&text=Hello%20Ihsan%20Fajar%20Ramadhan';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
