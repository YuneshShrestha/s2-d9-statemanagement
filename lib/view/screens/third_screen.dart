import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:state_management/controller/count_controller.dart';
import 'package:state_management/main.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    var controller = Get.find<CountController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
        actions: [
          Switch.adaptive(
              value: switchValue,
              onChanged: (value) {
                MyApp.of(context).changeBrightness();
                setState(() {
                  switchValue = value;
                });
              }),
        ],
      ),
      body: Center(
        child: Text(
          controller.getData.toString(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
