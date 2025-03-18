import 'package:flutter/material.dart';
import 'package:named_routed_routing/navigator/FirstScreen.dart';
import 'package:named_routed_routing/navigator/SecondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: 'first_route',
      routes: {
        'first_route': (context) => const FirstScreen(),
        'second_route': (context) => const SecondScreen(),
      },
    );
  }





}

