import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheesebirger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and prickle.",
      imagePath: "lib/images/burgers/burger1.png",
      price: 30,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 30),
        Addon(name: "Bacon", price: 32),
        Addon(name: "Avocado", price: 35),
      ],
    ),
    Food(
      name: "Double Bacon Cheeseburger",
      description:
          "Two juicy beef patties with crispy bacon, cheddar cheese, lettuce, and tomato.",
      imagePath: "lib/images/burgers/burger2.png",
      price: 30,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 30),
        Addon(name: "Onion rings", price: 25),
        Addon(name: "Jalapenos", price: 20),
      ],
    ),
    Food(
      name: "Classic BBQ Burger",
      description:
          "Grilled beef patty with smoky barbecue sauce, grilled onions, and pickles.",
      imagePath: "lib/images/burgers/burger3.png",
      price: 32,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Bacon", price: 32),
        Addon(name: "Mushrooms", price: 18),
        Addon(name: "Fried egg", price: 15),
      ],
    ),
    Food(
      name: "Spicy Chicken Burger",
      description:
          "Crispy fried chicken breast with spicy sauce, lettuce, and mayo.",
      imagePath: "lib/images/burgers/burger4.png",
      price: 32,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Cheese", price: 32),
        Addon(name: "Guacamole", price: 35),
        Addon(name: "Bacon", price: 32),
      ],
    ),
    Food(
      name: "Vegetarian Portobello Burger",
      description:
          "Grilled portobello mushroom with roasted peppers, spinach, and pesto.",
      imagePath: "lib/images/burgers/burger5.png",
      price: 28,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Goat cheese", price: 28),
        Addon(name: "Avocado", price: 35),
        Addon(name: "Sun-dried tomatoes", price: 22),
      ],
    ),
    Food(
      name: "Fish Fillet Burger",
      description:
          "Crispy battered fish fillet with tartar sauce, lettuce, and tomato.",
      imagePath: "lib/images/burgers/burger6.png",
      price: 30,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Cheese", price: 30),
        Addon(name: "Bacon", price: 32),
        Addon(name: "Pickles", price: 20),
      ],
    ),
    //salads
    Food(
      name: "Caesar Salad",
      description:
          "Fresh romaine lettuce with grilled chicken, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/salads1.png",
      price: 20.0,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Shrimp", price: 8),
        Addon(name: "Avocado", price: 5),
        Addon(name: "Bacon", price: 6),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Crisp lettuce with tomatoes, cucumbers, feta cheese, olives, and Greek dressing.",
      imagePath: "lib/images/salads/salads2.png",
      price: 18.0,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 7),
        Addon(name: "Red onions", price: 3),
        Addon(name: "Pepperoncini", price: 4),
      ],
    ),
    Food(
      name: "Spinach and Strawberry Salad",
      description:
          "Fresh spinach with strawberries, goat cheese, almonds, and balsamic vinaigrette.",
      imagePath: "lib/images/salads/salads3.png",
      price: 22.0,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled salmon", price: 10),
        Addon(name: "Candied pecans", price: 4),
        Addon(name: "Blueberries", price: 3),
      ],
    ),
    Food(
      name: "Caprese Salad",
      description:
          "Sliced tomatoes with fresh mozzarella, basil, olive oil, and balsamic glaze.",
      imagePath: "lib/images/salads/salads4.png",
      price: 16.0,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Prosciutto", price: 6),
        Addon(name: "Artichoke hearts", price: 5),
        Addon(name: "Sun-dried tomatoes", price: 4),
      ],
    ),
    Food(
      name: "Asian Chicken Salad",
      description:
          "Shredded cabbage with grilled chicken, mandarin oranges, almonds, and sesame ginger dressing.",
      imagePath: "lib/images/salads/salads5.png",
      price: 19.0,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Crispy noodles", price: 3),
        Addon(name: "Edamame", price: 4),
        Addon(name: "Grilled shrimp", price: 8),
      ],
    ),

    //sides
    Food(
      name: "French Fries",
      description: "Crispy golden French fries served hot and salted.",
      imagePath: "lib/images/sides/sides1.png",
      price: 3.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese sauce", price: 1.5),
        Addon(name: "Bacon bits", price: 1.5),
        Addon(name: "Garlic aioli", price: 1),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Golden and crispy onion rings with a light batter.",
      imagePath: "lib/images/sides/sides2.png",
      price: 4.50,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Chipotle mayo", price: 1),
        Addon(name: "Ranch dressing", price: 1),
        Addon(name: "Spicy ketchup", price: 0.75),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "Toasted bread slices topped with garlic butter and parsley.",
      imagePath: "lib/images/sides/sides3.png",
      price: 2.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Melted mozzarella", price: 1.5),
        Addon(name: "Tomato bruschetta", price: 1.25),
        Addon(name: "Balsamic glaze", price: 1),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Fresh romaine lettuce with parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/sides/sides4.png",
      price: 5.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 2),
        Addon(name: "Shrimp", price: 3),
        Addon(name: "Anchovies", price: 1.5),
      ],
    ),
    Food(
      name: "Mashed Potatoes",
      description: "Creamy mashed potatoes seasoned to perfection.",
      imagePath: "lib/images/sides/sides5.png",
      price: 3.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Brown gravy", price: 1),
        Addon(name: "Garlic aioli", price: 1),
        Addon(name: "Bacon bits", price: 1.5),
      ],
    ),
    //desserts
    Food(
      name: "Strawberry Shortcake",
      description:
          "Delicious layers of sponge cake, fresh strawberries, and whipped cream.",
      imagePath: "lib/images/desserts/dessert2.png",
      price: 6.50,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla ice cream", price: 2),
        Addon(name: "Chocolate sauce", price: 1),
        Addon(name: "Whipped cream", price: 1),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "Classic apple pie with a flaky crust and cinnamon-spiced apple filling.",
      imagePath: "lib/images/desserts/dessert3.png",
      price: 7.50,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla ice cream", price: 2),
        Addon(name: "Caramel sauce", price: 1.5),
        Addon(name: "Whipped cream", price: 1),
      ],
    ),
    Food(
      name: "Red Velvet Cupcake",
      description:
          "Moist and velvety red velvet cupcake topped with cream cheese frosting.",
      imagePath: "lib/images/desserts/dessert4.png",
      price: 5,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.5),
        Addon(name: "Raspberry filling", price: 1),
        Addon(name: "Extra frosting", price: 1),
      ],
    ),
    Food(
      name: "Lemon Meringue Pie",
      description:
          "Tangy lemon filling topped with fluffy meringue in a buttery crust.",
      imagePath: "lib/images/desserts/dessert5.png",
      price: 8.50,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla ice cream", price: 2),
        Addon(name: "Blueberry compote", price: 1.5),
        Addon(name: "Whipped cream", price: 1),
      ],
    ),
    //drinks
    Food(
      name: "Coca-Cola",
      description: "Refreshing Coca-Cola with ice.",
      imagePath: "lib/images/drinks/drinks1.png",
      price: 2.50,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon slice", price: 0.5),
        Addon(name: "Cherry syrup", price: 0.75),
      ],
    ),
    Food(
      name: "Sprite",
      description: "Crisp and clear lemon-lime flavored Sprite.",
      imagePath: "lib/images/drinks/drinks2.png",
      price: 2.50,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lime wedge", price: 0.5),
        Addon(name: "Mint leaves", price: 0.75),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Refreshing iced tea served with lemon slices.",
      imagePath: "lib/images/drinks/drinks3.png",
      price: 2.00,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Peach flavoring", price: 0.75),
        Addon(name: "Raspberry syrup", price: 0.75),
      ],
    ),
    Food(
      name: "Chocolate Milkshake",
      description: "Creamy chocolate milkshake topped with whipped cream.",
      imagePath: "lib/images/drinks/drinks6.png",
      price: 4.50,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Chocolate sauce drizzle", price: 1.00),
        Addon(name: "Extra whipped cream", price: 0.75),
      ],
    ),
    Food(
      name: "Chocolate Smoothie",
      description:
          "Rich and indulgent chocolate smoothie with bananas and almond milk.",
      imagePath: "lib/images/drinks/drinks6.png",
      price: 5.00,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Peanut butter", price: 1.50),
        Addon(name: "Protein powder", price: 2.00),
      ],
    ),
  ];

  // G E T T E R S
  List<Food> get menu => _menu;

  // O P E R A T I O N

  //add to cart

  //remove to the cart

  //get the total price of the cart

  //get total number  of items in cart

  //clear the cart

  //H E L P E R S

  //generate a receipe

  // format double value into money

  //format list of addons  into a string summary
}
