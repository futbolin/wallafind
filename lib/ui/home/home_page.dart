import 'package:flutter/material.dart';
import 'package:wallafind/core/vm/base_widget.dart';
import 'package:wallafind/ui/home/home_page_vm.dart';
import 'package:wallafind/ui/home/widgets/walla_title.dart';

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
          body: const Column(
            children: [],
          ),
        );
      },
    );
  }
}
