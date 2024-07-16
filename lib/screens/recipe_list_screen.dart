import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/screens/screens.dart';
import 'package:flutter_application_1/extensions.dart';

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({super.key});
  static final recipes = Constants.recipes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: context.colorScheme.primary,
        title: Text(
          'EPAM Cocktail',
          style: TextStyle(
            color: context.colorScheme.background,
            fontFamily: 'EPAM2',
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
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
          return Card(
            elevation: 20,
            color: Theme.of(context).colorScheme.primary,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetailScreen(recipe: recipe),
                  ),
                );
              },
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      recipe.imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.error);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recipe.name,
                          style: TextStyle(
                            color: Colors.orange,
                            fontFamily: 'EPAM2',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          recipe.description,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'EPAM2',
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
