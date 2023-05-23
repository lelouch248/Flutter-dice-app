import "package:flutter/material.dart";
import "package:first_app/gradient_container.dart";
// import '/gradient_container.dart'; also works

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 31, 72, 92),
          Color.fromARGB(255, 39, 41, 135),
        ),
      ),
    ),
  );
}
