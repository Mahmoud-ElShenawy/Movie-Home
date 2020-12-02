import 'package:moviehome/model/video.dart';

// Created By Mahmoud El Shenawy (Email : Mr.Mahmoud.El.Shenawy@Gmail.com)

class VideoResponse {
  final List<Video> videos;
  final String error;

  VideoResponse(
    this.videos,
    this.error,
  );

  VideoResponse.fromJson(Map<String, dynamic> json)
      : videos =
            (json["results"] as List).map((i) => Video.fromJson(i)).toList(),
        error = "";

  VideoResponse.withError(String errorValue)
      : videos = List(),
        error = errorValue;
}
