class Product {
  int id;
  String name;
  String type;
  double price;
  String image;
  String distance;

  Product(
      {required this.id,
      required this.type,
      required this.name,
      required this.price,
      required this.image,
      required this.distance});
}

class Category {
  String name;
  List<Product> products;

  Category({required this.name, required this.products});
}
