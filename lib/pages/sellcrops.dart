import 'package:flutter/material.dart';
import 'package:flutter_mudda/widgets/sellcropsbar.dart';

class SellCropsPage extends StatelessWidget {
  const SellCropsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        const SellCropsBar(),
        Container(
          child: const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "Add details",
              style: TextStyle(
                  color: Color(0xFF563E1F),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ]),
    );
  }
}
