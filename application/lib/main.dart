import 'package:application/home/home_page.dart';
import 'package:application/home/http/http_bindings.dart';
import 'package:application/home/http/http_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(
            name: '/http',
            page: () => const HttpPage(),
            binding: HttpBindings()),
      ],
    );
  }
}
