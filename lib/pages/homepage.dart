import 'package:flutter/material.dart';
import 'musicpage.dart';
import 'meditationpage.dart';
import 'minepage.dart';

//应用的主界面，主要是负责实现三个子页面的跳转切换逻辑。
class HomePage extends StatefulWidget {
  State createState() => new _HomeTabBarState();
}

class _HomeTabBarState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Scaffold(
        appBar: new AppBar(
            title: new Text("Relax Music")),
        body:new TabBarView(
            controller: _controller,
            children: [
              new MusicPage(),
              new MeditationPage(),
              new MinePage()
            ]),
        bottomNavigationBar: new Material(color: Colors.blue,
          child: new TabBar(
              indicatorWeight: 0.1,
              labelPadding: const EdgeInsets.all(6.0),
              controller: _controller,
              tabs:[
                new Tab(icon: new Icon(Icons.library_music)),
                new Tab(icon: new Icon(Icons.perm_camera_mic)),
                new Tab(icon: new Icon(Icons.person_outline))
              ]
          ),),
      ),
    );
  }
}