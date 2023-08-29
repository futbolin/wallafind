import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wallafind/core/models/product.dart';
import 'package:wallafind/ui/home/widgets/walla_title.dart';
import 'package:wallafind/ui/reusable/text_styles.dart';
import 'package:wallafind/utils/screen.dart';

class SinglePage extends StatelessWidget {
  const SinglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: const WallaTitle(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil.getWidthPercentage(context, 5)),
        child: SizedBox(
          height: ScreenUtil.getHeightPercentage(context, 80),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: ScreenUtil.getWidthPercentage(context, 90),
                  height: ScreenUtil.getWidthPercentage(context, 50),
                  child: Image.network(product.images.first.original),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(product.title),
                ),
                Text(
                  (NumberFormat.currency(name: "€")).format(product.price),
                  style: kText13BlackRegular,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(product.description),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
