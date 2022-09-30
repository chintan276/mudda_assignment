import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 6; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "images/images$i.png",
                          width: 20,
                          height: 20,
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          "All Items",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.brown,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ]),
                ],
              ),
            )
        ],
      ),
    );
  }
}
