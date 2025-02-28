import 'package:demo1/screens/detail_page.dart';
import 'package:demo1/screens/home_page.dart';
import 'package:demo1/screens/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'models/quiz_model.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    getPages: [
      GetPage(name: '/splash', page: () => SplashScreen()),
      GetPage(name: '/', page: () => HomePage()),
      // GetPage(name: '/detail', page: () => DetailPage()),
    ],
  ));
}
