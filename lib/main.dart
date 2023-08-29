import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wallafind/ui/reusable/app_colors.dart';
import 'package:wallafind/ui/router.dart';
import 'package:wallafind/ui/splash/splash_page.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wallafind',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: kColorMain,
          background: kColorWhite,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        AppLocalizationDelegate(),
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("es", ''),
        Locale("en", ''),
      ],
      home: const SplashPage(),
      onGenerateRoute: CustomRouter.generateRoute,
    );
  }
}
