import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State createState() => new _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    var widget = new Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("images/splash_background.png"),fit: BoxFit.cover)
        ),
        child: new Stack(
          children: [
            new Positioned(
              child: new Column(
                children: [
                  new Image.asset('images/splash_icon.png',
                      height: 60, width: 60, fit: BoxFit.cover),
                  new Container(
                    child: new Text('Relax Music',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            decoration: TextDecoration.none)),
                    padding: EdgeInsets.only(top: 20),
                  ),
                  new Container(
                    child: new Text('Medication, Sleep Music and White Noise',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            decoration: TextDecoration.none)),
                    padding: EdgeInsets.only(top: 20),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              left: 32.0,
              bottom: 100,
            ),
          ],
        ));
    return widget;
  }

  @override
  void initState() {
    super.initState();
    var _duration = new Duration(seconds: 3);
    new Future.delayed(_duration,(){
      _goMainPage();
    });
  }

  void _goMainPage() {
    Navigator.of(context).pushReplacementNamed("/MainPage");
  }
}
