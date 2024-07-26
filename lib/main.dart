import 'package:flutter/material.dart';
import 'package:parallax/Screens/HomeScreen.dart';
import 'package:parallax/Screens/MainHome.dart';
import 'package:parallax/Screens/PehlaScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Netverbatim',

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Pehlascreen(),
    );
  }
}

