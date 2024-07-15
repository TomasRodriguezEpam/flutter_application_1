import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          selectionHandleColor: Colors.white,
        ),
      ),
      home: const WelcomeScreen(),
      routes: {
        '/recipes': (context) => const RecipeListScreen(),
        '/addRecipe': (context) => const AddRecipeScreen(),
      },
    );
  }
}
