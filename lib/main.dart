import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Relax Your Mind',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/MainPage': (context) => MyHomePage(),
        },
        home: new SplashPage());
  }
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
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
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
