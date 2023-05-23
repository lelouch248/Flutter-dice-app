import 'package:flutter/material.dart';
import 'dart:math';
import 'package:first_app/styled_heading.dart';

// global variable
final randamizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
  // createstate returns a state object of the type diceroller
  // this shall execute the constructor function of dicerollerstate
  //
}

// second class
// _ means private class
class _DiceRollerState extends State<DiceRoller>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  // An AnimationController is a special object that generates
  // a sequence of values over a specific duration. It is used to drive animations in Flutter by producing values that can be interpolated and applied to animated properties.
  late Animation<double> _animation;
  var randomNumber = 1;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  void rollDice() {
    setState(() {
      randomNumber = randamizer.nextInt(6) + 1;
    });
    _controller.reset();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: StyledHeading(
            title: "Dice game",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: RotationTransition(
            turns: _animation,
            child: Image.asset(
              "assets/dice-images/dice-$randomNumber.png",
              width: 200,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
