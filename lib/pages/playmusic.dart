import 'package:flutter/material.dart';
import 'package:relax_music/model/music.dart';
import 'dart:ui' as ui show Image, ImageFilter;

class PlayMusic extends StatefulWidget {
  Music music;

  @override
  State createState() => new _PlayMusicState(music);
}

class _PlayMusicState extends State<PlayMusic> {
  final Music music;

  _PlayMusicState(this.music);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new NetworkImage(music.bannerUrl),
                    fit: BoxFit.cover),
                color: Colors.black45),
            foregroundDecoration:
                new BoxDecoration(color: Color(0x100636).withAlpha(92)),
          ),
          new Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text(music.title),
              ),
              body: new Container(
                child: new Stack(
                  children: <Widget>[
                    new Positioned(
                        left: 20,
                        right: 20,
                        bottom: 60,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            buildButton(Icons.access_alarm, 30),
                            buildButton(
                              Icons.play_circle_filled,
                              60,
                            ),
                            buildButton(Icons.favorite_border, 30),
                          ],
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget buildButton(IconData iconData, double iconSize) {
    return new Expanded(
      child: new IconButton(
          icon: new Icon(
            iconData,
            color: Colors.white,
          ),
          onPressed: null,
          iconSize: iconSize),
    );
  }
}
