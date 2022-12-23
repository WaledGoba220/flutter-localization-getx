import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedLang = "en";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          child: Directionality(
            textDirection: _selectedLang == 'en'? TextDirection.ltr: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login".tr,
                  style: const TextStyle(fontSize: 32),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "SignUp".tr,
                  style: const TextStyle(fontSize: 32),
                ),
                DropdownButton(
                    items: const [
                      DropdownMenuItem(
                        child: Text("en"),
                        value: 'en',
                      ),
                      DropdownMenuItem(
                        child: Text("ar"),
                        value: 'ar',
                      ),
                    ],
                    value: _selectedLang,
                    onChanged: (value) {
                      setState(() {
                        _selectedLang = value!;
                      });
                      Get.updateLocale(Locale(_selectedLang));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
