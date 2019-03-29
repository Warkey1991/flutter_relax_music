// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Music _$MusicFromJson(Map<String, dynamic> json) {
  return Music(
      json['show_nums'] as int,
      json['video_url'] as String,
      json['music_url'] as String,
      json['title'] as String,
      json['background_url'] as String,
      json['id'] as int,
      json['classes'] as String,
      json['banner_url'] as String,
      json['descrip'] as String,
      json['thumb_url'] as String,
      json['type'] as String,
      json['order'] as int,
      json['product_id'] as String);
}

Map<String, dynamic> _$MusicToJson(Music instance) => <String, dynamic>{
      'show_nums': instance.showCount,
      'video_url': instance.videoUrl,
      'music_url': instance.musicUrl,
      'title': instance.title,
      'background_url': instance.backgroundUrl,
      'id': instance.id,
      'classes': instance.classes,
      'banner_url': instance.bannerUrl,
      'descrip': instance.description,
      'thumb_url': instance.thumbUrl,
      'type': instance.type,
      'order': instance.order,
      'product_id': instance.productId
    };
