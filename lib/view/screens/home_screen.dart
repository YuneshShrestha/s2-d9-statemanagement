import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controller/count_controller.dart';
// import 'package:provider/provider.dart';
// import 'package:state_management/controller/count_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("Rebuilding");
    // var dataListener = Provider.of<CountController>(context, listen: false);
    Get.put(CountController());
    final controller = Get.find<CountController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/second");
            },
            child: const Text("Next"),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hello Number"),
            Obx(() => Text(controller.getData.toString(),
                style: const TextStyle(fontSize: 30))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // dataListener.increaseCount();
          controller.increaseCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
