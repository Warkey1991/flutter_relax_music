// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'musicresult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MusicResult _$MusicResultFromJson(Map<String, dynamic> json) {
  return MusicResult(
      (json['music_list'] as List)
          ?.map((e) =>
              e == null ? null : Music.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['time_stamp'] as num)?.toDouble(),
      json['version'] as String,
      json['error_code'] as int,
      json['next_request_interval'] as int);
}

Map<String, dynamic> _$MusicResultToJson(MusicResult instance) =>
    <String, dynamic>{
      'music_list': instance.musics,
      'time_stamp': instance.timeStamp,
      'version': instance.version,
      'error_code': instance.errorCode,
      'next_request_interval': instance.nextRequestInterval
    };
