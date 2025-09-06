
import 'package:chat_app/presentation/screens/login_screen.dart';
import 'package:chat_app/presentation/screens/main_app_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "SplineSans", // set global font
        primaryColor: const Color(0xFF38e07b), // global green
        scaffoldBackgroundColor: const Color(0xFF111714), // dark bg
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF38e07b), // ensures green tint
          brightness: Brightness.dark,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF38e07b), // green
            foregroundColor: const Color(0xFF111714), // text color on button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}