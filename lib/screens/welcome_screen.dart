import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Image.asset('assets/images/logo.png', fit: BoxFit.contain),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Text(
                'Welcome to EPAM Cocktail!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/recipes');
                },
                child: const Text('Go to Recipes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
