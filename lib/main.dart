import 'package:flutter/material.dart';
import 'package:flutter_commerce/common/AppBar.dart';
import 'package:flutter_commerce/modules/Home/HomeScreen.dart';
import 'package:flutter_commerce/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: ThemeColors.primary,
        ),
      ),
      home: const App(
        isMenu: true,
        child: HomeScreen(),
      ),
    );
  }
}
