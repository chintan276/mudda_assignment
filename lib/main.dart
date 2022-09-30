import 'package:flutter/material.dart';
import 'package:flutter_mudda/pages/krishi_bazaar.dart';
import 'package:flutter_mudda/pages/sellcrops.dart';
import 'package:flutter_mudda/pages/sellpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.orange,
        ),
        routes: {
          "/": (context) => KrishiBazaar(),
          "sellpage": ((context) => SellPage()),
          "sellingcropspage": ((context) => SellCropsPage()),
        });
  }
}
