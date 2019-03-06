# relax_music

develop an app using flutter

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

### Flutter app 中学习Widget的使用

- Container [使用方法与介绍](https://ninghao.net/blog/6415)
  ```Dart
   Container({
       Key key, 
       this.alignment, //对齐,设置child 相对于容器的对齐
       this.padding,  //内边距
       Color color,   //背景色
       Decoration decoration, //装饰：比如圆角，阴影，渐变，背景颜色与图像等等
       this.foregroundDecoration,
       double width,
       double height,
       BoxConstraints constraints,//限制容器的最小或者最大的宽度与高度
       this.margin,   //外边距
       this.transform,
       this.child,
     });
   ```
   //本项目中我用到了 Decoration装饰属性设置了一张图充当背景的作用
   ```dart
   var cner = new Container(
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
   ```
- Stack 实现相对布局的Widget。官方文档介绍A widget that positions its children relative to the edges of its box.(相对于其边缘定位其所有的子控件的一个小部件)
  ```dart
  class Stack extends MultiChildRenderObjectWidget {
    /// Creates a stack layout widget.
    ///
    /// By default, the non-positioned children of the stack are aligned by their
    /// top left corners.
    Stack({
      Key key,
      this.alignment = AlignmentDirectional.topStart,
      this.textDirection,
      this.fit = StackFit.loose, //How to size the non-positioned children in the stack
      this.overflow = Overflow.clip,
      List<Widget> children = const <Widget>[],
    }) : super(key: key, children: children);
   ```
  
  **如果是child是non-positioned 控件，就需要使用alignment 和 fit来控制其位置和大小。**
  **对于绘制child的顺序，则是第一个child被绘制在最底端，后面的依次在前一个child的上面，类似于web中的z-index。如果想调整显示的顺序，则可以通过摆放child的顺序来进行。**
  
  该项目代码用到的是positioned子控件。使用了left 和bottom属性定位其距左下角的位置。个人感觉在实际应用中该种方式比较好。
  ```dart
     var positioned = new Positioned(
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
           );
    
  ```
  
  
 ### 针对开发APP 需要使用的一些组件
  - 底部导航栏[实现方式](https://www.jianshu.com/p/3bf61b805d11)
    本项目中使用了TabBar + TabBarView的方式实现的。
    - 相当于 Android 原生TabLayout + ViewPage
    - 有自带 Material Design 动画
    - 支持左右滑动
    
    这里需要TabController的一个实现类[TabController](https://juejin.im/post/5ab73355f265da238e0db3fe)
    Tab 可以设置文字、图片等信息。
  ```dart
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
```
    
    
    
  