import 'package:easy_localization/easy_localization.dart' as easy;
import 'package:flutter/material.dart';
import 'package:flutter_dev_test/ui/views/home_view/home_view.dart';

void main() {
  runApp(
    easy.EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('ar', 'SA')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar', 'SA'),
      saveLocale: true,
      startLocale: const Locale('ar', 'SA'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dev Test',
      theme: ThemeData(
        fontFamily: 'DINN',
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}