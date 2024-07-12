import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/third");
            },
            child: const Text("Next"),
          ),
        ],
      ),
      body: Center(
        child: Text("Second Screen"),
      ),
    );
  }
}
