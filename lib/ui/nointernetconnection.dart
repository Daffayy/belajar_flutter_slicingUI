import 'package:flutter/material.dart';

import '../widget/button_tryagain.dart';



class NoInternetConnection extends StatefulWidget {
  const NoInternetConnection({Key? key}) : super(key: key);

  @override
  State<NoInternetConnection> createState() => _NoInternetConnectionState();
}

class _NoInternetConnectionState extends State<NoInternetConnection> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 270,
              ),
              Image.asset(
                "assets/eva_wifi-off-fill.png",
                width: 133.29,
                height: 120.07,
              ),
              Text(
                "No internet Connection",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: "SFprotext",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                  "   Your internet connection is currently\n not available please check or try again.",
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: "SFprotext/SF-Pro-Text-Regular.otf"),
              ),
              SizedBox(
                height: 150,
              ),
                buildtryagainbutton(),
            ],
          ),
        ),
      ),
    );
  }
}
