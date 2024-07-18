import 'package:flutter/material.dart';

int background = 0xFF000000;
int onBackgroundColor = 0xFFD9D9D9;
int primaryColor = 0xFF2EE0FF;
int secondaryColor = 0xFF8A8A8A;
int tertiaryColor = 0xFF5DC7AC;

final darkColorScheme = ColorScheme.dark(
  brightness: Brightness.dark,
  background: Color(background),
  onBackground: Color(onBackgroundColor),
  primary: Color(primaryColor),
  secondary: Color(secondaryColor),
  tertiary: Color(tertiaryColor),
);

final themeData = ThemeData(
  colorScheme: darkColorScheme,
);
