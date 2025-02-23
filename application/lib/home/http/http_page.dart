import 'dart:developer';

import 'package:application/home/http/http_controller.dart';
import 'package:application/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HttpPage extends GetView<HttpController> {
  const HttpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http'),
      ),
      body: controller.obx((state) {
        log("state ${state}");

        return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) {
              final UserModel item = state[index];
              log("item $item");
              return ListTile(
                title: Text(item.name ?? ""),
              );
            });
      }, onError: (error) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Error get Users"),
              TextButton(
                  onPressed: () => controller.findUsers(),
                  child: const Text(
                    'Retry',
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          ),
        );

        //  Center(child: Text(error ?? 'Error Get Users'));
      }),
    );
  }
}
