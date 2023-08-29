import 'dart:convert';

class VisibilityFlags {
  bool bumped;
  bool highlighted;
  bool urgent;
  bool countryBumped;
  bool boosted;

  VisibilityFlags({
    required this.bumped,
    required this.highlighted,
    required this.urgent,
    required this.countryBumped,
    required this.boosted,
  });

  factory VisibilityFlags.fromRawJson(String str) => VisibilityFlags.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VisibilityFlags.fromJson(Map<String, dynamic> json) => VisibilityFlags(
        bumped: json["bumped"],
        highlighted: json["highlighted"],
        urgent: json["urgent"],
        countryBumped: json["country_bumped"],
        boosted: json["boosted"],
      );

  Map<String, dynamic> toJson() => {
        "bumped": bumped,
        "highlighted": highlighted,
        "urgent": urgent,
        "country_bumped": countryBumped,
        "boosted": boosted,
      };
}
