import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class Why extends StatelessWidget {
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
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Why I Started a\n',
                  style: poppinsB.copyWith(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'YouTube Channel?',
                  style: poppinsB.copyWith(
                    fontSize: 20,
                    color: green,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'First, I want sharing knowledge about\nbeautiful UI in Flutter and I want to\neducate people about collaborate\nFlutter and Laravel or Firebase. because\nwhen I learning Flutter always watch\nvideo on YouTube.',
            style: poppinsR.copyWith(
              fontSize: 15,
              color: grey1,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () => _launchUrl(),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: green,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  'My YouTube',
                  style: poppinsM.copyWith(
                    fontSize: 18,
                    color: green,
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
  const url = 'https://www.youtube.com/channel/UC7MtQePGTB94bVAf_-8EQkQ';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
