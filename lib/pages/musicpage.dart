import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:relax_music/model/music.dart';
import 'package:relax_music/model/musicresult.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:relax_music/utils/dlog.dart';
import 'package:relax_music/pages/playmusic.dart';

class MusicPage extends StatefulWidget {
  @override
  State createState() => new _MusicHomePage();
}

class _MusicHomePage extends State<MusicPage> {
  List<Music> musics;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: createListView(),
      backgroundColor: Color.fromARGB(3, 19, 42, 74),
    );
  }

  @override
  void initState() {
    super.initState();
    jsonToModel();
  }

  Widget createListView() {
    var delegate = new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      mainAxisSpacing: 16,
      crossAxisSpacing: 12,
      childAspectRatio: 0.82,
    );
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: delegate,
      addRepaintBoundaries: false,
      itemCount: musics == null ? 0 : musics.length,
      itemBuilder: (BuildContext context, int index) {
        var music = musics[index];
        return GestureDetector(child: gridItemView(music),
        onTap: ()=> clickItemResponse(music),);
      },
    );
  }

  Column gridItemView(Music music) {
    return new Column(
        children: <Widget>[
      new Expanded(
        child: new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new NetworkImage(music.thumbUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
      new Container(
        margin: const EdgeInsets.only(top: 4),
        //margin: const EdgeInsets.only(top: 8.0),
        child: new Text(
          music.title,
          maxLines: 1,
          textAlign: TextAlign.center,
          style: new TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: Colors.blue,
          ),
        ),
      ),
    ]);
  }

  void clickItemResponse(Music music) {
       //Navigator.of(context).pushNamed('/PlayPage');
       Navigator.of(context).push(new MaterialPageRoute(builder:(_){
           var playMusic = new PlayMusic();
           playMusic.music = music;
           return playMusic;
       }));
  }

  ///
  /// 加载本地json
  ///
  Future<String> loadMusicAsset() async {
    return await rootBundle.loadString('resource/json/flutter_music_json.json');
  }

  ///
  /// json解析
  ///
  jsonToModel() {
    loadMusicAsset().then((value) {
      Map<String, dynamic> musicMap = json.decode(value);
      var musicResult = new MusicResult.fromJson(musicMap);
      DLog.d(musicResult.toString());
      setState(() {
        musics = musicResult.musics;
      });
    });
  }
}
