import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/models.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/screens.dart';

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Recipe> recipes = [
      Recipe(
        name: 'Spaghetti Carbonara',
        imageUrl: 'https://example.com/spaghetti.jpg',
        description: 'A classic Italian pasta dish.',
      ),
      Recipe(
        name: 'Chicken Curry',
        imageUrl: 'https://example.com/curry.jpg',
        description: 'A spicy and flavorful dish.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, '/addRecipe');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return ListTile(
            leading: Image.network(recipe.imageUrl),
            title: Text(recipe.name),
            subtitle: Text(recipe.description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailScreen(recipe: recipe),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
