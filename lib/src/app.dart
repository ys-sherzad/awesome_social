import 'package:flutter/material.dart';
import './utils/colorLib.dart';
import './home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorLib.primary,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: ColorLib.background,
      ),
      themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(brightness: Brightness.dark),
      home: Home(),
    );
  }
}
