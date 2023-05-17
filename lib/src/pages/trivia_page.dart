import 'package:flutter/material.dart';

import '../../theme.dart';
import '../widgets/card_trivia.dart';
import '../widgets/congrats_page.dart';
import '../widgets/try_page.dart';

class TriviaHomePage extends StatelessWidget {
  const TriviaHomePage({super.key});

  final pathBanner = 'assets/images/imgTriviaPromo.png';
  final pathImg = 'assets/images/imgTriviaPromo.png';

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
              pathBanner,
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
          Padding(
            padding: const EdgeInsets.only(top: 51),
            child: CardTrivia(
              imagePath: 'assets/images/imgHelixultra.png',
              question: '¿Qué significa la "X" en ',
              questionSecondary: 'Shell Helix Ultra X',
              buttons: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CongratsPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimary,
                  ),
                  child: const Text(
                    'EXcelente eficiencia',
                    style: TextStyle(color: kTextColor),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TryPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimary,
                  ),
                  child: const Text(
                    'EXtra protección',
                    style: TextStyle(color: kTextColor),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TryPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimary,
                  ),
                  child: const Text(
                    'Rendimiento EXtremo',
                    style: TextStyle(color: kTextColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
