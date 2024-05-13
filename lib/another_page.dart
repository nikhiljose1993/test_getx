import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/count_controller.dart';
import 'package:test_getx/main.dart';

class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CountController cnt = Get.find();

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              '${cnt.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          GetBuilder(
            builder: (CountController controller) => Text(
              '${controller.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cnt.decrement();
          // GetX Navigation Get.to()
          Get.to(const MyHomePage(title: 'MMMMMMM'));
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
