import 'dart:convert';

import 'package:wallafind/core/models/image.dart';

class User {
  String id;
  String microName;
  Image image;
  bool online;
  String kind;

  User({
    required this.id,
    required this.microName,
    required this.image,
    required this.online,
    required this.kind,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        microName: json["micro_name"],
        image: Image.fromJson(json["image"]),
        online: json["online"],
        kind: json["kind"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "micro_name": microName,
        "image": image.toJson(),
        "online": online,
        "kind": kind,
      };
}
