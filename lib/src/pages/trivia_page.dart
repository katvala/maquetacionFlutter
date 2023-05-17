import 'package:flutter/material.dart';
import 'package:vistas/src/widgets/card_trivia.dart';
import 'package:vistas/theme.dart';

class TriviaHomePage extends StatelessWidget {
  const TriviaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Removes shadow from AppBar
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            color: kTextColor,
            iconSize: 28,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/images/imgTriviaPromo.png',
              width: 331,
              height: 106,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 52),
            child: Text(
              '¿Sabías qué?',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
            child: Text(
              'Su tecnología es creada a partir de gas natural en bruto que ayuda a que el aceite sea más resistente a la oxidación proporcionando una mayor protección al motor del vehículo.',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 51),
            child: CardTrivia(),
          )
        ],
      ),
    );
  }
}
