import 'package:flutter_application_1/models/recipe.dart';

abstract class RecipeRepository {
  Future<void> addRecipe(Recipe recipe);
  Future<List<Recipe>> getRecipes();
  Future<void> deleteRecipe(String name);
}
