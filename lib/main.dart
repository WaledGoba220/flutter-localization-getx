import 'package:flutter/material.dart';
import 'package:flutter_localization/screens/home_screen.dart';
import 'package:flutter_localization/service/translation.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: "Localization",
      home: const HomeScreen(),

      translations: Translation(), // tract of translation lang
      locale: const Locale('en'), // the standard language
      fallbackLocale: const Locale('en'), // if error found standard lang
    );
  }
}
