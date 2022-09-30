import 'package:flutter/material.dart';
import 'package:flutter_mudda/pages/sellapp.dart';
import 'package:flutter_mudda/widgets/sellappbar.dart';

class SellPage extends StatelessWidget {
  const SellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SellAppBar(),
        SellApp(),
      ]),
    );
  }
}
