import 'dart:convert';

import 'package:wallafind/core/models/flags.dart';
import 'package:wallafind/core/models/image.dart';
import 'package:wallafind/core/models/location.dart';
import 'package:wallafind/core/models/shipping.dart';
import 'package:wallafind/core/models/user.dart';
import 'package:wallafind/core/models/visibilityflags.dart';

class Product {
  String id;
  String title;
  String description;
  int distance;
  List<Image> images;
  User user;
  Flags flags;
  VisibilityFlags visibilityFlags;
  int price;
  String currency;
  bool freeShipping;
  String webSlug;
  int categoryId;
  Shipping shipping;
  bool supportsShipping;
  bool shippingAllowed;
  String sellerId;
  bool favorited;
  int creationDate;
  int modificationDate;
  Location location;
  dynamic typeAttributes;
  dynamic taxonomy;
  dynamic discount;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.distance,
    required this.images,
    required this.user,
    required this.flags,
    required this.visibilityFlags,
    required this.price,
    required this.currency,
    required this.freeShipping,
    required this.webSlug,
    required this.categoryId,
    required this.shipping,
    required this.supportsShipping,
    required this.shippingAllowed,
    required this.sellerId,
    required this.favorited,
    required this.creationDate,
    required this.modificationDate,
    required this.location,
    required this.typeAttributes,
    required this.taxonomy,
    required this.discount,
  });

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        distance: json["distance"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        user: User.fromJson(json["user"]),
        flags: Flags.fromJson(json["flags"]),
        visibilityFlags: VisibilityFlags.fromJson(json["visibility_flags"]),
        price: json["price"],
        currency: json["currency"],
        freeShipping: json["free_shipping"],
        webSlug: json["web_slug"],
        categoryId: json["category_id"],
        shipping: Shipping.fromJson(json["shipping"]),
        supportsShipping: json["supports_shipping"],
        shippingAllowed: json["shipping_allowed"],
        sellerId: json["seller_id"],
        favorited: json["favorited"],
        creationDate: json["creation_date"],
        modificationDate: json["modification_date"],
        location: Location.fromJson(json["location"]),
        typeAttributes: json["type_attributes"],
        taxonomy: json["taxonomy"],
        discount: json["discount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "distance": distance,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "user": user.toJson(),
        "flags": flags.toJson(),
        "visibility_flags": visibilityFlags.toJson(),
        "price": price,
        "currency": currency,
        "free_shipping": freeShipping,
        "web_slug": webSlug,
        "category_id": categoryId,
        "shipping": shipping.toJson(),
        "supports_shipping": supportsShipping,
        "shipping_allowed": shippingAllowed,
        "seller_id": sellerId,
        "favorited": favorited,
        "creation_date": creationDate,
        "modification_date": modificationDate,
        "location": location.toJson(),
        "type_attributes": typeAttributes,
        "taxonomy": taxonomy,
        "discount": discount,
      };
}
