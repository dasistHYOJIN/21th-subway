import 'package:flutter/material.dart';

enum Line {
  blue('1', Color.fromARGB(255, 28, 108, 193)),
  green('2', Color.fromRGBO(42, 105, 58, 1)),
  orange('3', Color.fromRGBO(255, 173, 40, 1)),
  skyblue('4', Color.fromARGB(255, 145, 188, 234)),
  purple('5', Color.fromARGB(255, 159, 47, 233)),
  brown('6', Color.fromARGB(255, 221, 163, 98)),
  karkie('7', Color.fromARGB(255, 83, 110, 89)),
  pink('8', Color.fromARGB(255, 241, 63, 137)),
  ;

  final String number;
  final Color color;

  const Line(this.number, this.color);

  static Color decideLineColor(String number) {
    return Line.values
            .where((line) => line.number == number)
            .map((line) => line.color)
            .firstOrNull ??
        const Color.fromARGB(255, 28, 108, 193);
  }
}
