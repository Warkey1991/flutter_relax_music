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
   new Container(
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
