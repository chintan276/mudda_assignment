import 'package:flutter/material.dart';

class SellApp extends StatefulWidget {
  const SellApp({super.key});

  @override
  State<SellApp> createState() => _SellAppState();
}

class _SellAppState extends State<SellApp> {
  int selectedIndex = -1;
  final List<Map<String, dynamic>> gridMap = [
    {
      "images": "images/images13.png",
      "title": "All items",
    },
    {
      "images": "images/images14.png",
      "title": "Animals",
    },
    {
      "images": "images/images15.png",
      "title": "Agri Inputs",
    },
    {
      "images": "images/images16.png",
      "title": "Seeds",
    },
    {
      "images": "images/images17.png",
      "title": "Equipments",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 3.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: gridMap.length,
      itemBuilder: (BuildContext context, int position) {
        return InkWell(
            onTap: () => setState(() => selectedIndex = position),
            child: SizedBox(
              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "sellingcropspage");
                  },
                  child: Card(
                    shape: (selectedIndex == position)
                        ? const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.green))
                        : null,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              16.0,
                            ),
                            color: Colors.white,
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.network(
                                      "${gridMap.elementAt(position)['images']}",
                                      height: 99,
                                      width: 135,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(children: [
                                    Center(
                                      child: Text(
                                        "${gridMap.elementAt(position)['title']}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .merge(
                                              const TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFF563E1F)),
                                            ),
                                      ),
                                    ),
                                  ]),
                                ),
                              ])),
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
