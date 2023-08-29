import 'package:flutter/material.dart';
import 'package:wallafind/ui/home/widgets/walla_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const WallaTitle(),
      ),
    );
  }
}
