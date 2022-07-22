part of janus_client;

class VideoCallListEvent {
  VideoCallListEvent({
      this.videocall, 
      this.result,});

  VideoCallListEvent.fromJson(dynamic json) {
    videocall = json['videocall'];
  }
  String? videocall;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['videocall'] = videocall;
    return map;
  }

}
