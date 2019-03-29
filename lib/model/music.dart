import 'package:json_annotation/json_annotation.dart';
part 'music.g.dart';

@JsonSerializable()
class Music{
  @JsonKey(name: "show_nums")
  int showCount;
  @JsonKey(name: "video_url")
  String videoUrl;
  @JsonKey(name: "music_url")
  String musicUrl;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "background_url")
  String backgroundUrl;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "classes")
  String classes;
  @JsonKey(name: "banner_url")
  String bannerUrl;
  @JsonKey(name: "descrip")
  String description;
  @JsonKey(name: "thumb_url")
  String thumbUrl;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "order")
  int order;
  @JsonKey(name: "product_id")
  String productId;


  Music(this.showCount, this.videoUrl, this.musicUrl, this.title,
      this.backgroundUrl, this.id, this.classes, this.bannerUrl,
      this.description, this.thumbUrl, this.type, this.order, this.productId);

  factory Music.fromJson(Map<String, dynamic> json)=>_$MusicFromJson(json);
  Map<String, dynamic> toJson()=> _$MusicToJson(this);

  @override
  String toString() {
    return 'Music{showCount: $showCount, videoUrl: $videoUrl, musicUrl: $musicUrl, title: $title, backgroundUrl: $backgroundUrl, id: $id, classes: $classes, bannerUrl: $bannerUrl, description: $description, thumbUrl: $thumbUrl, type: $type, order: $order, productId: $productId}';
  }


}