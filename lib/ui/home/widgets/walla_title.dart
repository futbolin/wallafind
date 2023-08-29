import 'package:flutter/material.dart';
import 'package:wallafind/ui/reusable/text_styles.dart';

class WallaTitle extends StatelessWidget {
  const WallaTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "walla",
          style: kText30MainColorRegular,
        ),
        Text(
          "find",
          style: kText30BlackBold,
        ),
      ],
    );
  }
}
