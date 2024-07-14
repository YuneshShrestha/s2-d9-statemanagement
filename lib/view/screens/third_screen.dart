import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:state_management/controller/count_controller.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    var controller = Get.find<CountController>();
    return Scaffold(
      body: Center(
        child: Text(
          controller.getData.toString(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
