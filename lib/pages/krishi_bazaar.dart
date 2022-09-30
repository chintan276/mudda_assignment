import 'package:flutter/material.dart';
import 'package:flutter_mudda/widgets/categories_widget.dart';
import 'package:flutter_mudda/widgets/items_widget.dart';
import 'package:flutter_mudda/widgets/krishi_appbar.dart';
import 'package:flutter_mudda/pages/sellpage.dart';

import '../icons.dart';

class KrishiBazaar extends StatelessWidget {
  const KrishiBazaar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const KrishiAppBar(),
          Container(
            height: 1127,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F4F4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        height: 45,
                        width: 330,
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              size: 25,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                            hintText: "Search Product Name...",
                            hintStyle: TextStyle(fontSize: 12),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                ),
                CategoriesWidget(),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                ),
                const GridB(),
                ElevatedButton.icon(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          )),
                          builder: (context) => Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListTile(
                                      leading: const Icon(
                                        Icons.sell_outlined,
                                        color: Colors.brown,
                                      ),
                                      title: const Text(
                                        "Sell Product",
                                        style: TextStyle(color: Colors.brown),
                                      ),
                                      onTap: (() {
                                        Navigator.pushNamed(
                                            context, "sellpage");
                                      }),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListTile(
                                      leading: const Icon(
                                        Icons.sell_outlined,
                                        color: Colors.brown,
                                      ),
                                      title: const Text(
                                        "Rent Product",
                                        style: TextStyle(color: Colors.brown),
                                      ),
                                      onTap: (() {}),
                                    ),
                                  )
                                ],
                              ));
                    },
                    icon: const Icon(Icons.add),
                    label: const Text("Sell")),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          onTap: (index) {},
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.home_1_),
              label: "Home",
            ),
            BottomNavigationBarItem(
                label: "My Station", icon: Icon(MyFlutterApp.vector)),
            BottomNavigationBarItem(
                label: "Krishi Bazaar", icon: Icon(MyFlutterApp.vector_1_)),
            BottomNavigationBarItem(
                label: "My Farm", icon: Icon(MyFlutterApp.vector_2_)),
            BottomNavigationBarItem(
                label: "Krishi Gyan", icon: Icon(MyFlutterApp.vector_3_)),
          ]),
    );
  }
}
