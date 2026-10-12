class Product {
  String name;
  String category;
  double price;

  Product({required this.name, required this.category, required this.price});
}

Map<String, double> totalByCategory(List<Product> products) {
  Map<String, double> categoryTotals = {};

  for (var product in products) {
    categoryTotals[product.category] = (categoryTotals[product.category] ?? 0) + product.price;
  }

  return categoryTotals;
}
