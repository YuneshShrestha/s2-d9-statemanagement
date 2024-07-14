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
  var currentValue = false;
  @override
  Widget build(BuildContext context) {
    // var dataListener = Provider.of<CountController>(context, listen: false);
    var controller = Get.find<CountController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Third Screen",
        ),
        actions: [
          Switch.adaptive(
              value: currentValue,
              onChanged: (value) {
                MyApp.of(context).toogleBrightness();
                setState(() {
                  currentValue = value;
                });
              })
        ],
      ),
      body: Center(
        child: Text(
          controller.getData.value.toString(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
