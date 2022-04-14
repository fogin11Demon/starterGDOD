class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;
  String rec;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients, this.rec);

  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/2126711929_ef763de2b3_w.jpg',
      4,
      [
        Ingredient(
          1,
          'box',
          'Spaghetti',
        ),
        Ingredient(
          4,
          '',
          'Frozen Meatballs',
        ),
        Ingredient(
          0.5,
          'jar',
          'sauce',
        ),
      ],
  'First of all, prepare the minced meat: put the meat in a deep bowl, add '
      'salt and pepper to taste, add thyme and rosemary leaves (pre-crushed) '
      'and bread crumbs. Mix everything well with your hands, add the egg and '
      'knead again until smooth. Set aside.Finely chop the onion and garlic. '
      'In a frying pan (a wide one with high edges is best), fry the onion in '
      'a small amount of olive oil (1-2 tablespoons) over medium heat for '
      'about 4-5 minutes, then add the garlic and fry for another couple of '
      'minutes.Meanwhile, cut the tomatoes in half and rub them on a coarse '
      'grater, only the pulp. Add tomato paste to the ground tomatoes, add '
      'salt, mix and pour into a frying pan. Put the finely chopped basil '
      'leaves in the tomato sauce.While the sauce is boiling, make meatballs: '
      'with wet hands, make 10 balls with a diameter of about 4 cm. Put them '
      'in the boiling sauce, reduce the heat so that the sauce does not boil '
      'too much. Meatballs should be half in the sauce. If required, you can '
      'add a little water to make the sauce a little more liquid. Cook the '
      'meatballs under the lid for 20-25 minutes, turning every 5-7 minutes, '
      'until tender.Cook the pasta until al dente (usually it a minute less '
      'than it says on the package), drain the water and add it to the pan '
      'with the sauce. Mix the spaghetti with the sauce, put on a plate and '
      'sprinkle with parmesan before serving.',
    ),
    Recipe(
      'Tomato Soup',
      'assets/27729023535_a57606c1be.jpg',
      2,
      [
        Ingredient(
          1,
          'can',
          'Tomato Soup',
        ),
      ],
      '123',
    ),
    Recipe(
      'Grilled Cheese',
      'assets/3187380632_5056654a19_b.jpg',
      1,
      [
        Ingredient(
          2,
          'slices',
          'Cheese',
        ),
        Ingredient(
          2,
          'slices',
          'Bread',
        ),
      ],
      '123',
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/15992102771_b92f4cc00a_b.jpg',
      24,
      [
        Ingredient(
          4,
          'cups',
          'flour',
        ),
        Ingredient(
          2,
          'cups',
          'sugar',
        ),
        Ingredient(
          0.5,
          'cups',
          'chocolate chips',
        ),
      ],
      '123',
    ),
    Recipe(
      'Taco Salad',
      'assets/8533381643_a31a99e8a6_c.jpg',
      1,
      [
        Ingredient(
          4,
          'oz',
          'nachos',
        ),
        Ingredient(
          3,
          'oz',
          'taco meat',
        ),
        Ingredient(
          0.5,
          'cup',
          'cheese',
        ),
        Ingredient(
          0.25,
          'cup',
          'chopped tomatoes',
        ),
      ],
      '123',
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/15452035777_294cefced5_c.jpg',
      4,
      [
        Ingredient(
          1,
          'item',
          'pizza',
        ),
        Ingredient(
          1,
          'cup',
          'pineapple',
        ),
        Ingredient(
          8,
          'oz',
          'ham',
        ),
      ],
      '123',
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
