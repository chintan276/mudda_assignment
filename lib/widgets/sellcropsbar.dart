import 'package:flutter/material.dart';

class SellCropsBar extends StatelessWidget {
  const SellCropsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xFF563E1F),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 100.0),
            child: Text(
              "Selling Crops",
              style: TextStyle(
                  color: Color(0xFF563E1F),
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
