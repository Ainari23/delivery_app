//food item
class Food {
  final String name; // burger cheese
  final String description; // a burger full of cheese
  final String imagePath; // lib/images/cheese_burger.png
  final double price; //3k Ar
  final FoodCategory foodCategory; //burger
  List<Addon> availableAddons; //extra cheese, sauce, extra patty

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.foodCategory,
    required this.availableAddons,
  });
}

enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

//food Addon
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
