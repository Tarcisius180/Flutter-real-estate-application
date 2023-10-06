import 'package:flutter/material.dart';
import 'package:happyproertiesq/screens/Reset_link.dart';
import 'package:happyproertiesq/screens/home_page.dart';
import 'package:happyproertiesq/screens/landingpage.dart';
import 'package:happyproertiesq/screens/selectorpage.dart';
import 'screens/profile_page.dart';
import 'screens/normal_marketplace.dart';
import 'package:provider/provider.dart';
import 'package:happyproertiesq/screens/favorites_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => FavoritesProvider(), // Initialize the provider
      child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
    );
  }
}