import 'package:flutter/material.dart';

import 'screens/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pokedex",
      home: Home(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE3350D),
        ),
        useMaterial3: true,
      ),
    ),
  );
}
