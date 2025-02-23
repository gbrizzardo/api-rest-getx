import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Access Api")),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () => Get.toNamed('/http'),
                child: const Text(
                  "Http",
                  style: TextStyle(fontSize: 20),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Dio",
                  style: TextStyle(fontSize: 20),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Get Connect",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
