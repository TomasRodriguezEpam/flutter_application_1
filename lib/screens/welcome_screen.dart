import 'package:flutter/material.dart';
import 'package:flutter_application_1/extensions.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [              
              Image.asset('assets/images/logo.png'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/recipes');
                },
                child: Text(
                  'Go to Cocktails',
                  style: TextStyle(
                    color: context.colorScheme.secondary,
                    fontFamily: 'EPAM2',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
