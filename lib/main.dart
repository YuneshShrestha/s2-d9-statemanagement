import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/view/screens/home_screen.dart';
import 'package:state_management/view/screens/second_screen.dart';
import 'package:state_management/view/screens/third_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
  static of(BuildContext context) {
    return context.findAncestorStateOfType<_MyAppState>();
  }
}

class _MyAppState extends State<MyApp> {
  var brightness = Brightness.light;
  void changeBrightness() {
    setState(() {
      brightness =
          brightness == Brightness.light ? Brightness.dark : Brightness.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: brightness,
        ),
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
