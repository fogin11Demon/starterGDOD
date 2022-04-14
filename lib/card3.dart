import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      // 3
      body: SafeArea(
        // 4
        // 4
        child: ListView.builder(
          // 5
          itemCount: Recipe.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return RecipeDetail(recipe: Recipe.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
                color: Colors.red,
              ),
            ),
            // 5
            const SizedBox(
              height: 15.0,
            ),
            // 6
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage(recipe.imageUrl),
                radius: 150,
              ),
            ),

            // Image(
            //   image: AssetImage(recipe.imageUrl),
            //   height: 200,
            //   width: 200,
            // ),
          ],
        ),
      ),
    );
  }
}
