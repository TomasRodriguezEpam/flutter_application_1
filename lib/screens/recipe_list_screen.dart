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
      Recipe(
        name: 'The Bug Fix Fizz',
        imageUrl:
            'https://www.thinkginclub.com/wp-content/uploads/2019/06/gin-fizz-square-1024x1024.png',
        description: ' A bubbly boost to squash those pesky bugs.',
        instructions:
            'Combine 1.5 oz gin, 1 oz lemon juice, 1/2 oz simple syrup in a shaker with ice. Shake and strain into a highball glass filled with ice. Top with club soda and garnish with a gummy worm. Humor: Because fixing bugs often feels like a sweet victory after a long, fizzing struggle.',
      ),
      Recipe(
        name: 'The Semicolon Tequila',
        imageUrl:
            'https://3.bp.blogspot.com/-Ba14YlaqQsQ/XAC5qb8TtFI/AAAAAAAAD1c/BaxdvwrwCuoFvOvQbr7ZmfLzWQ80YlhXACLcBGAs/s1600/Tequila-Sunrise-Cocktail-12.jpg',
        description: 'A coder\'s twist on a classic cocktail.',
        instructions:
            'Pour 2 oz orange juice into a glass filled with ice. Slowly add 1 oz grenadine so it settles at the bottom. Top with a splash of soda water. Garnish with an orange slice and a cherry. Humor: Just like a semicolon can save your code from crashing, this drink can save your evening from dullness.',
      ),
      Recipe(
        name: 'The JavaScript Jitters',
        imageUrl:
            'https://th.bing.com/th/id/R.a045820c3b4ed8e06b7bfd52bfbde1e0?rik=%2bMOFErWXVDL7sw&pid=ImgRaw&r=0',
        description:
            'A caffeinated concoction for those late-night coding sessions.',
        instructions:
            'Combine 1.5 oz vodka, 1 oz freshly brewed espresso, and 1/2 oz coffee liqueur in a shaker with ice. Shake vigorously and strain into a chilled martini glass. Garnish with a few coffee beans. Humor: For those moments when your code is running, but you’re not sure if it’s due to your skill or sheer caffeine-induced frenzy.',
      ),
      Recipe(
        name: 'The Stack Overflow Sangria',
        imageUrl:
            'https://divinelifestyle.com/wp-content/uploads/2020/06/Easy-Fruity-Summer-White-Sangria-Recipe-with-Rum-11-720x1080.jpg',
        description: 'A robust and fruity escape from coding dilemmas.',
        instructions:
            'In a large pitcher, combine 1 bottle of red wine, 1/2 cup brandy, 1/4 cup orange liqueur, and 1/4 cup rum. Add sliced oranges, lemons, limes, and berries. Chill for at least 2 hours. Serve over ice, topping with a splash of soda water if desired. Humor: Because just like searching through Stack Overflow, this sangria is a mix of everything you need to keep going.',
      ),
      Recipe(
        name: 'The Deployment Disaster',
        imageUrl:
            'https://bygabriella.co/wp-content/uploads/2017/01/honeyandsmoke_7.jpg',
        description: 'A bold and smoky cocktail to handle deployment woes.',
        instructions:
            'Combine 2 oz mezcal, 1 oz lime juice, 1/2 oz agave syrup in a shaker with ice. Shake and strain into a rocks glass with a large ice cube. Garnish with a slice of charred lime or a sprig of rosemary set aflame. Humor: For those fiery moments when your deployment fails spectacularly, and you need a drink to match the intensity.',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'EPAM Cocktail',
          style: TextStyle(
            color: Theme.of(context).colorScheme.background,
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
