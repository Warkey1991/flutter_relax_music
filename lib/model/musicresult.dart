import 'package:json_annotation/json_annotation.dart';
import 'music.dart';

part 'musicresult.g.dart';

@JsonSerializable()
class MusicResult{
  @JsonKey(name:"music_list")
  List<Music> musics;
  @JsonKey(name:"time_stamp")
  double timeStamp;
  @JsonKey(name:"version")
  String version;
  @JsonKey(name:"error_code")
  int errorCode;
  @JsonKey(name:"next_request_interval")
  int nextRequestInterval;

  MusicResult(this.musics, this.timeStamp, this.version, this.errorCode,
      this.nextRequestInterval);

  factory MusicResult.fromJson(Map<String, dynamic> json)=>_$MusicResultFromJson(json);
  Map<String, dynamic> toJson()=> _$MusicResultToJson(this);

  @override
  String toString() {
    return 'MusicResult{musics: $musics, timeStamp: $timeStamp, version: $version, errorCode: $errorCode, nextRequestInterval: $nextRequestInterval}';
  }


}