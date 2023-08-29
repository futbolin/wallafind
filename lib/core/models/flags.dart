import 'dart:convert';

class Flags {
  bool pending;
  bool sold;
  bool reserved;
  bool banned;
  bool expired;
  bool onhold;

  Flags({
    required this.pending,
    required this.sold,
    required this.reserved,
    required this.banned,
    required this.expired,
    required this.onhold,
  });

  factory Flags.fromRawJson(String str) => Flags.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        pending: json["pending"],
        sold: json["sold"],
        reserved: json["reserved"],
        banned: json["banned"],
        expired: json["expired"],
        onhold: json["onhold"],
      );

  Map<String, dynamic> toJson() => {
        "pending": pending,
        "sold": sold,
        "reserved": reserved,
        "banned": banned,
        "expired": expired,
        "onhold": onhold,
      };
}
