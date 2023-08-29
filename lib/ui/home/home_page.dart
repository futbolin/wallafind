import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wallafind/core/vm/base_widget.dart';
import 'package:wallafind/generated/l10n.dart';
import 'package:wallafind/ui/home/home_page_vm.dart';
import 'package:wallafind/ui/home/widgets/walla_title.dart';
import 'package:wallafind/ui/reusable/text_styles.dart';
import 'package:wallafind/utils/screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomePageVM>(
      model: HomePageVM(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const WallaTitle(),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenUtil.getWidthPercentage(context, 5)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    onSubmitted: (text) async {
                      model.textToSearch = text;
                      await model.search();
                    },
                    decoration: InputDecoration(
                      hintText: "${S.of(context).search}...",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    height: ScreenUtil.getHeightPercentage(context, 70),
                    child: ListView.builder(
                      itemCount: model.findProducts.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              leading: SizedBox(
                                width: ScreenUtil.getWidthPercentage(context, 20),
                                child: Image.network(model.findProducts[index].images.first.original),
                              ),
                              title: Text(
                                model.findProducts[index].title,
                                style: kText13BlackRegular,
                                maxLines: 2,
                              ),
                              trailing: Text(
                                (NumberFormat.currency(name: "€")).format(model.findProducts[index].price),
                                style: kText13BlackRegular,
                              ),
                            ),
                            const Divider(),
                          ],
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
