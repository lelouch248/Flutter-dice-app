import "package:flutter/material.dart";

class StyledHeading extends StatelessWidget {
  final String title;
  const StyledHeading({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center, // Center the text horizontally
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 2.0,
      ),
    );
  }
}
