import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application_1/models/recipe.dart';
import 'recipe_repository.dart';

class SharedPreferencesRecipeRepository implements RecipeRepository {
  static const String _recipesKey = 'recipes';

  @override
  Future<void> addRecipe(Recipe recipe) async {
    final prefs = await SharedPreferences.getInstance();
    final recipes = await getRecipes();
    recipes.add(recipe);
    final recipesJson = jsonEncode(recipes.map((r) => r.toJson()).toList());
    await prefs.setString(_recipesKey, recipesJson);
  }

  @override
  Future<List<Recipe>> getRecipes() async {
    final prefs = await SharedPreferences.getInstance();
    final recipesJson = prefs.getString(_recipesKey);
    if (recipesJson != null) {
      final List<dynamic> recipesList =
          jsonDecode(recipesJson) as List<dynamic>;
      return recipesList
          .map((json) => Recipe.fromJson(json as Map<String, dynamic>))
          .toList();
    }
    return [];
  }

  @override
  Future<void> deleteRecipe(String name) async {
    final prefs = await SharedPreferences.getInstance();
    final recipes = await getRecipes();
    recipes.removeWhere((recipe) => recipe.name == name);
    final recipesJson = jsonEncode(recipes.map((r) => r.toJson()).toList());
    await prefs.setString(_recipesKey, recipesJson);
  }

  Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
