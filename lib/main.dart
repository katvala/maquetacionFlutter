import 'package:flutter/material.dart';
import 'package:vistas/src/pages/trivia_page.dart';
import 'package:vistas/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // banner de debug
      debugShowCheckedModeBanner: false,
      title: 'Trivia',
      theme: solarTheme,
      initialRoute: '/',
      routes: {'/': (BuildContext context) => const TriviaHomePage()},
    );
  }
}
