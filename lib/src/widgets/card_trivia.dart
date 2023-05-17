import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class CardTrivia extends StatelessWidget {
  final String imagePath;
  final String question;
  final String questionSecondary;
  final List<Widget> buttons;

  const CardTrivia({
    Key? key,
    required this.imagePath,
    required this.question,
    required this.questionSecondary,
    required this.buttons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: DottedBorder(
        borderType: BorderType.RRect,
        color: kSecondary,
        dashPattern: const [8, 4],
        strokeWidth: 4,
        radius: const Radius.circular(30),
        padding: const EdgeInsets.all(3),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
              26), // Reducimos el radio para que las esquinas sean visibles
          child: Container(
            width: 370,
            height: 400,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Stack(
              children: [
                // gradient
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.65),
                        Colors.white.withOpacity(0.65),
                      ],
                    ),
                  ),
                ),
                // child-content
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Row(
                          children: [
                            Expanded(
                                //LinearProgressIndicator
                                child: Container(
                              width: double.infinity,
                              height: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: kSecondary,
                                  )),
                              child: const LinearProgressIndicator(
                                value: 0.5,
                                valueColor: AlwaysStoppedAnimation(kSecondary),
                                backgroundColor: Colors.transparent,
                              ),
                            )),
                            const SizedBox(
                                width: 8.0), //Space between bar and text
                            Text(
                              '5 Puntos',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(imagePath),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 20.0, right: 20),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: question,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(),
                            children: [
                              TextSpan(
                                text: questionSecondary,
                                style: const TextStyle(
                                  color: kSecondary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const TextSpan(
                                text: '?',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 8,
                          runSpacing: 1,
                          children: buttons,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
