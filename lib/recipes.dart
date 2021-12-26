class Recipe {
  String label;
  String imageUrl;
  Recipe(
    this.label,
    this.imageUrl,
  );

  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/SpaghettiAndMeatballs.jpg',
    ),
    Recipe(
      'Tomato Soup',
      'assets/TomatoSoup',
    ),
    Recipe(
      'Grilled Cheese',
      'assets/GrilledCheese.jpg',
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/ChocolateChipCookies.jpg',
    ),
    Recipe(
      'Taco Salad',
      'assets/TacoSalad.jpg',
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/HawaiianPizza.jpg',
    ),
  ];
}
