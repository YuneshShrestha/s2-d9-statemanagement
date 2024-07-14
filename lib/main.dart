import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:state_management/controller/count_controller.dart';
import 'package:state_management/view/screens/home_screen.dart';
import 'package:state_management/view/screens/second_screen.dart';
import 'package:state_management/view/screens/third_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Named Route
      routes: {
        "/": (ctx) => const HomeScreen(),
        "/second": (ctx) => const SecondScreen(),
        "/third": (ctx) => const ThirdScreen(),
      },

      debugShowCheckedModeBanner: false,
    );
  }
}
