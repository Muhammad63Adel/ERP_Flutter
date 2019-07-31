import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:erp/platform/platformScaffold.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() =>  _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int splashDuration = 2;

  startTime() async {
    return Timer(
        Duration(seconds: splashDuration),
            () {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
          Navigator.of(context).pushReplacementNamed('/Login');
        }
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Scaffold  (
        backgroundColor: Colors.white,
        body: Center(

          child:
            Container(
              width: 200,
              height: 200,
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/plane.png'),

                  )
              ),
            ),



        ));
  }


}