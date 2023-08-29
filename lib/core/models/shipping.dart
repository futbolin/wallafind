import 'dart:convert';

class Shipping {
  bool itemIsShippable;
  bool userAllowsShipping;
  String? costConfigurationId;

  Shipping({
    required this.itemIsShippable,
    required this.userAllowsShipping,
    this.costConfigurationId,
  });

  factory Shipping.fromRawJson(String str) => Shipping.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Shipping.fromJson(Map<String, dynamic> json) => Shipping(
        itemIsShippable: json["item_is_shippable"],
        userAllowsShipping: json["user_allows_shipping"],
        costConfigurationId: json["cost_configuration_id"],
      );

  Map<String, dynamic> toJson() => {
        "item_is_shippable": itemIsShippable,
        "user_allows_shipping": userAllowsShipping,
        "cost_configuration_id": costConfigurationId,
      };
}
