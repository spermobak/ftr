import 'package:flutter/material.dart';

final theme = ThemeData(
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
  listTileTheme: const ListTileThemeData(iconColor: Colors.black),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 20,
        fontFamily: "BebasNeue-Regular"
    ),
    labelSmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 10,
    ),
  ),
  useMaterial3: true,
);