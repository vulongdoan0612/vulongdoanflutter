import 'package:book_app/content_page.dart';
import 'package:book_app/login_page.dart';
import 'package:book_app/my_detail_page.dart';
import 'package:book_app/my_detail_page_2.dart';
import 'package:book_app/my_home_page.dart';
import 'package:book_app/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blue),
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => Login()),
          GetPage(name: '/', page: () => MyHomePage()),
          GetPage(name: '/detail/', page: () => MyDetailPage()),
          GetPage(name: '/de/', page: () => MyDetailPage2()),
          GetPage(name: '/second/', page: () => SecondPage())
        ]);
  }
}
