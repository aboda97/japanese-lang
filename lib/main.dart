import 'package:flutter/material.dart';
import 'package:weights/screens/business_card.dart';
import 'package:weights/screens/language_learning/home_page.dart';
import 'package:weights/screens/points_counter.dart';

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
      home: HomePageLang(),
    );
  }
}


