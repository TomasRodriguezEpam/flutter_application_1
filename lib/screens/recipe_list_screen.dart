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
        name: 'The Semantic Sunrise',
        imageUrl:
            'https://www.liquor.com/thmb/AzpVVdl0Q9RBaxwImpdX8pyPTWY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/tequila-sunrise-1500x1500-hero-eeae10efeb134a3e9d5a3852b1b6e7dc.jpg',
        description: 'A refreshing start to your coding marathon.',
        instructions:
            ' Combine 2 oz orange juice, 1 oz grenadine, and 1/2 oz simple syrup in a shaker with ice. Shake and strain into a glass filled with ice. Garnish with a cherry and an orange slice. Humor: Because clean code is like a beautiful sunrise - a rare and magnificent sight',
      ),
      Recipe(
        name: 'The 404 Margarita',
        imageUrl: 'https://bing.com/th?id=OSK.ef8b0016e8e6e982dcd405d50433ea6b',
        description:
            ' A tangy reminder that sometimes, things just don\'t exist.',
        instructions:
            ' Combine 2 oz tequila, 1 oz lime juice, and 1/2 oz orange liqueur in a shaker with ice. Shake and strain into a margarita glass with a salted rim. Garnish with a lime wedge shaped like a question mark. Humor: For those moments when your code throws a 404 error, leaving you wondering "where\'d my logic go?"',
      ),
      Recipe(
        name: 'The Infinite Loop Daiquiri',
        imageUrl: 'https://bing.com/th?id=OSK.8b473c72161b0db9ad700de4f469c341',
        description:
            'A sweet and smooth drink that might just keep you coding forever.',
        instructions:
            'Combine 2 oz white rum, 1 oz lime juice, and 1/2 oz simple syrup in a shaker with ice. Shake and strain into a chilled coupe glass. Garnish with a lime wheel and a stirrer shaped like an infinity symbol. Humor: Because sometimes, you get stuck in a coding loop, repeating the same lines over and over again. This drink might help (or not).',
      ),
      Recipe(
        name: 'The Cache Cleaner Cosmopolitan',
        imageUrl:
            'https://www.nelliebellie.com/wp-content/uploads/2015/01/sweetheart-martini-730x1098.jpg',
        description:
            'A light and bubbly drink to clear your head and refresh your code.',
        instructions:
            'Combine 1.5 oz vodka, 1 oz cranberry juice, 1/2 oz Cointreau, and 1/2 oz lime juice in a shaker with ice. Shake well and strain into a martini glass. Top with a splash of sparkling water. Garnish with a lime wedge and a sprig of mint. Humor: Because sometimes, your browser cache needs a good cleaning just like your messy code.',
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
