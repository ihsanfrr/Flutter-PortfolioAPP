import 'package:flutter/material.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/started.dart';
import 'package:portfolio/services/AuthServices.dart';
import 'package:portfolio/shared/constant.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => AuthServices(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: Provider.of<AuthServices>(context).getUser(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.error != null) {
              print('ini error');
              return Scaffold(
                backgroundColor: Colors.white,
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Wait this error',
                        style: pacifico.copyWith(
                          fontSize: 24,
                          color: green,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'You must connect internet',
                        style: poppinsR.copyWith(
                          fontSize: 12,
                          color: grey1,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
            return snapshot.hasData ? Home() : Started();
          } else {
            return Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: Text(
                  'Wait a sec',
                  style: pacifico.copyWith(
                    fontSize: 24,
                    color: green,
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
