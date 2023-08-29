import 'dart:convert';

import 'package:http/http.dart';
import 'package:wallafind/core/config/constants/api_router.dart';
import 'package:wallafind/core/models/product.dart';
import 'package:wallafind/core/vm/base_vm.dart';

class HomePageVM extends BaseVM {
  String textToSearch = "";

  List<Product> findProducts = [];

  Future<void> search() async {
    setBusy(true);
    Uri uri = Uri.parse(ApiRouter.searchRoute + textToSearch);
    final Response response = await get(uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));

      List<dynamic> listToCast = json["search_objects"];
      findProducts = listToCast.map((e) => Product.fromJson(e)).toList();
    }
    setBusy(false);
  }
}
