import 'package:flutter/material.dart';

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Vegetable",
      "sub-title": "Tomatoes",
      "distance": "2 Km",
      "price": "\$255/Kg",
      "images": "images/images10.png",
    },
    {
      "title": "Grain",
      "sub-title": "Wheat",
      "distance": "23 Km",
      "price": "\$255/Kg",
      "images": "images/images6.png",
    },
    {
      "title": "Fruit",
      "sub-title": "Grapes",
      "distance": "2 Km",
      "price": "\$255/Kg",
      "images": "images/images7.png",
    },
    {
      "title": "Grain",
      "sub-title": "Soyabean",
      "distance": "23 Km",
      "price": "\$255/Kg",
      "images": "images/images8.png",
    },
    {
      "title": "Vegetables",
      "sub-title": "Tomatoes",
      "distance": "2 Km",
      "price": "\$255/Kg",
      "images": "images/images11.png",
    },
    {
      "title": "Grains",
      "sub-title": "Wheat",
      "distance": "23 Km",
      "price": "\$255/Kg",
      "images": "images/images12.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 310,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16.0,
              ),
              color: Colors.white,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.network(
                  "${gridMap.elementAt(index)['images']}",
                  height: 148,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${gridMap.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                    ),
                    Text(
                      "${gridMap.elementAt(index)['sub-title']}",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.location_pin,
                            size: 15,
                            color: Color(0xFFE26B26),
                          ),
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                          ),
                          label: Text(
                            "${gridMap.elementAt(index)['distance']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFE26B26),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "${gridMap.elementAt(index)['price']}",
                              style:
                                  Theme.of(context).textTheme.subtitle2!.merge(
                                        const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFE26B26),
                                        ),
                                      ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
