part of janus_client;

class VideoCallListEvent {
  VideoCallListEvent({
      this.videocall, 
      this.result,});

  VideoCallListEvent.fromJson(dynamic json) {
    videocall = json['videocall'];
    result = json['result'] != null ? ListResult.fromJson(json['result']) : null;
  }
  String? videocall;
  ListResult? result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['videocall'] = videocall;
    if (result != null) {
      map['result'] = result?.toJson();
    }
    return map;
  }
}

class ListResult {
  ListResult({
      this.list,});

  List<String> list;

  factory ListResult.fromJson(Map<String, dynamic> json) => ListResult(
        list: List<String>.from(json["list"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
        "list": List<dynamic>.from(list.map((x) => x)),
  };

}