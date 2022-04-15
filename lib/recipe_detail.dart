import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        //title: Text(widget.recipe.label),
        title: Text(widget.recipe.label),
        centerTitle: true,
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image(image: AssetImage(widget.recipe.imageUrl),
                height: 350,
                //width: double.infinity,
                width: 450,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Recipe:',
              //widget.recipe.label,
              //style: const TextStyle(fontSize: 30),
              style: Theme.of(context).textTheme.headline6,
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Recipe'),
                            content: Text(
                              widget.recipe.rec,
                              style: TextStyle(fontSize: 15, color: Colors.red,
                                  fontFamily:'Pacifico'),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text(
                                  'OK',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ),
                    icon: Icon(Icons.book,color: Colors.yellow,size: 30,),),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Necessary ingredients from '
                  '${_sliderVal * widget.recipe.servings} person:',
              //widget.recipe.label,
              //style: const TextStyle(fontSize: 30),
              style: Theme.of(context).textTheme.headline6,
            ),
            // 7
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  // 9
                  return Text(
                      '- ${ingredient.quantity * _sliderVal} '
                      '${ingredient.measure} '
                      '${ingredient.name}',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20));
                },
              ),
            ),
            Slider(
              // 10
              min: 1,
              max: 10,
              divisions: 9,
              // 11
              label: '${_sliderVal * widget.recipe.servings} servings',
              // 12
              value: _sliderVal.toDouble(),
              // 13
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              // 14
              activeColor: Colors.yellow,
              inactiveColor: Colors.red,
            ),

          ],
        ),
      ),
    );
  }
}


