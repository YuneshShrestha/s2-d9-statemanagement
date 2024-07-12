import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/controller/count_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("Rebuilding");
    var dataListener = Provider.of<CountController>(context, listen: false);
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
      body: Consumer<CountController>(
        builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (child != null) child,
              Center(
                child: Text(
                  // dataListener.getData.toString(),
                  value.getData.toString(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ],
          );
        },
        child: const Text("Hello Number"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dataListener.increaseCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
