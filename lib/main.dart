import 'package:flutter/material.dart';
import 'package:flutter_application_1/repository/shared_preferences_recipe_repository.dart';
import 'package:flutter_application_1/screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /* final repository = SharedPreferencesRecipeRepository();
  await repository.clearAll();*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          selectionHandleColor: Colors.white,
        ),
      ),
      home: const WelcomeScreen(),
      routes: {
        '/recipes': (context) => RecipeListScreen(),
        '/addRecipe': (context) => AddRecipeScreen(),
      },
    );
  }
}
