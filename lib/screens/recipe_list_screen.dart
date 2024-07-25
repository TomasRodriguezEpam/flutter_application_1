import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/recipe.dart';
import 'package:flutter_application_1/repository/shared_preferences_recipe_repository.dart';
import 'recipe_detail_screen.dart';
import 'add_recipe_screen.dart';

class RecipeListScreen extends StatefulWidget {
  @override
  _RecipeListScreenState createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen> {
  final SharedPreferencesRecipeRepository _repository =
      SharedPreferencesRecipeRepository();
  List<Recipe> _recipes = [];

  @override
  void initState() {
    super.initState();
    _loadRecipes();
  }

  Future<void> _loadRecipes() async {
    final recipes = await _repository.getRecipes();
    setState(() {
      _recipes = recipes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (context, index) {
          final recipe = _recipes[index];
          return ListTile(
            title: Text(recipe.name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailScreen(recipe: recipe),
                ),
              ).then((_) => _loadRecipes());
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddRecipeScreen(),
            ),
          ).then((_) => _loadRecipes());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
