import 'dart:convert';

class Location {
  String city;
  String postalCode;
  String countryCode;

  Location({
    required this.city,
    required this.postalCode,
    required this.countryCode,
  });

  factory Location.fromRawJson(String str) => Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        city: json["city"],
        postalCode: json["postal_code"],
        countryCode: json["country_code"],
      );

  Map<String, dynamic> toJson() => {
        "city": city,
        "postal_code": postalCode,
        "country_code": countryCode,
      };
}
