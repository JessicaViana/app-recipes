import 'package:flutter/material.dart';
import 'package:recipes/recipes.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes Calculator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: const HomePage(
        title: 'Recipes Calculator',
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(recipe.imageUrl),
          Text(recipe.label),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: Recipe.samples.length,
            itemBuilder: (_, index) {
              return buildRecipeCard(Recipe.samples[index]);
            }),
      ),
    );
  }
}
