import 'dart:convert';

class Image {
  String original;
  String xsmall;
  String small;
  String large;
  String medium;
  String xlarge;
  int originalWidth;
  int originalHeight;

  Image({
    required this.original,
    required this.xsmall,
    required this.small,
    required this.large,
    required this.medium,
    required this.xlarge,
    required this.originalWidth,
    required this.originalHeight,
  });

  factory Image.fromRawJson(String str) => Image.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        original: json["original"],
        xsmall: json["xsmall"],
        small: json["small"],
        large: json["large"],
        medium: json["medium"],
        xlarge: json["xlarge"],
        originalWidth: json["original_width"],
        originalHeight: json["original_height"],
      );

  Map<String, dynamic> toJson() => {
        "original": original,
        "xsmall": xsmall,
        "small": small,
        "large": large,
        "medium": medium,
        "xlarge": xlarge,
        "original_width": originalWidth,
        "original_height": originalHeight,
      };
}
