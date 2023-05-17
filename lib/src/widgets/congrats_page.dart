import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../theme.dart';

class CongratsPage extends StatelessWidget {
  const CongratsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreen100,
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
                'assets/images/medal.svg',
                width: 331,
                height: 106,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 52),
              child: Text(
                '¡Felicidades!',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: kGreen, fontSize: 40.0, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 37, right: 37),
              child: Text(
                '¡Tu conocimiento sobre aceites de motor es impresionante!',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: kGreen, fontSize: 20.0),
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
