import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/controller/count_controller.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var dataListener = Provider.of<CountController>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Text(
          dataListener.getData.toString(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
