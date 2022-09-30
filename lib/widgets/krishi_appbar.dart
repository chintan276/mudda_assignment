import 'package:flutter/material.dart';

class KrishiAppBar extends StatelessWidget {
  const KrishiAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: const [
          Icon(
            Icons.menu,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 100,
            ),
            child: Text(
              "Krishi Bazaar",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE26B26)),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
