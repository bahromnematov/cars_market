import 'package:cars_market/amazon_ui.dart';
import 'package:cars_market/hotel_page.dart';
import 'package:cars_market/ui_amazon.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: UiAmazon()
    );
  }
}
