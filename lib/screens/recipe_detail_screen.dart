import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/models.dart';
import 'package:flutter_application_1/extensions.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailScreen({super.key, required this.recipe});

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
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.network(recipe.imageUrl),
            ),
            const SizedBox(height: 16.0),
            Text(
              recipe.name,
              style: TextStyle(
                color: Colors.orange,
                fontFamily: 'EPAM2',
                fontWeight: FontWeight.w300,
                fontSize: 40,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              recipe.description,
              style: TextStyle(
                color: Colors.lightBlue,
                fontFamily: 'EPAM2',
                fontWeight: FontWeight.w500,
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              recipe.instructions,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'EPAM2',
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Recipes'),
            ),
          ],
        ),
      ),
    );
  }
}
