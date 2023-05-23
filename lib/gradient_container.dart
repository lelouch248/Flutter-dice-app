// all imports in our file
import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

// styling properties for the gradient

const startAllignment = Alignment.topLeft;
const endAllignment = Alignment.topRight;

// ********************************************************************************************
class GradientContainer extends StatelessWidget {
  // final List<Color> colors;
  final Color color1;
  final Color color2;
  const GradientContainer(this.color1, this.color2, {super.key});

// * function declaration

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAllignment,
          end: endAllignment,
          colors: [
            color1,
            color2,
          ],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
