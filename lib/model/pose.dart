import 'package:json_annotation/json_annotation.dart';

part 'pose.g.dart';

@JsonSerializable()
class Pose {
  String title;
  String sub;
  String benefits;
  String image;
  @JsonKey(name: 'video_url')
  String videoUrl;
  @JsonKey(name: 'pause_points')
  List<int> pausePoints;
  List<int> index;

  Pose({
    this.title,
    this.sub,
    this.image,
    this.benefits,
    this.videoUrl,
    this.pausePoints,
    this.index,
  });

  factory Pose.fromJson(Map<String, dynamic> json) => _$PoseFromJson(json);

  Map<String, dynamic> toJson() => _$PoseToJson(this);
}
