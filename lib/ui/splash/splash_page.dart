import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wallafind/core/config/constants/assets.dart';
import 'package:wallafind/ui/router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () => Navigator.pushNamed(context, CustomRouter.home));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          Assets.splash,
        ),
      ),
    );
  }
}
