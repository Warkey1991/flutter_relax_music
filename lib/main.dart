import 'package:flutter/material.dart';
import 'package:relax_music/pages/splashpage.dart';
import 'package:relax_music/pages/homepage.dart';
import 'package:relax_music/pages/playmusic.dart';

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
          '/MainPage': (context) => HomePage(),
          '/PlayPage': (context) => PlayMusic(),
        },
        home: new SplashPage());
  }
}

