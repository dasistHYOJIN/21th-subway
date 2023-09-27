import 'package:flutter/material.dart';

import '../statics/line.dart';

class Station extends StatelessWidget {
  final String koreanName;
  final String englishName;
  final String line;
  final bool isFirst;
  final bool isLast;

  const Station({
    super.key,
    required this.koreanName,
    required this.englishName,
    required this.line,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 140,
        height: 140,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Line.decideLineColor(line),
            border: Border.all(color: Colors.black),
            shape: BoxShape.circle,
            boxShadow: const <BoxShadow>[
              BoxShadow(color: Colors.black, offset: Offset(3, 3)),
            ]),
        child: Container(
          width: 110,
          height: 110,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            shape: BoxShape.circle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                koreanName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                englishName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 117, 117, 117),
                ),
              ),
            ],
          ),
        ),
      ),
      LayoutBuilder(builder: (context, constraints) {
        if (isFirst) {
          return const Badge('첫차');
        }
        if (isLast) {
          return const Badge('막차');
        }
        return const SizedBox();
      }),
    ]);
  }
}

class Badge extends StatelessWidget {
  final String text;

  const Badge(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        width: 40,
        padding: const EdgeInsets.all(2),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          color: const Color.fromARGB(255, 66, 69, 66),
          border: Border.all(color: Colors.black),
        ),
        child: Text(
          text,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
