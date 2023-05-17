import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../theme.dart';

class TryPage extends StatelessWidget {
  const TryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary100,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                'assets/images/happy.svg',
                width: 331,
                height: 106,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 52),
              child: Text(
                '¡Buen intento!',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 40.0, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 37, right: 37),
              child: Text(
                '¡Sigue jugando para que aprendas más sobre nuestros productos!',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 37, right: 37),
              child: Text(
                ' La "X" significa "Rendimiento extremo", ya que este aceite está diseñado para brindar una protección superior contra el desgaste, la oxidación y la formación de depósitos, así como también para mejorar la eficiencia del combustible y reducir las emisiones de gases de escape.',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
