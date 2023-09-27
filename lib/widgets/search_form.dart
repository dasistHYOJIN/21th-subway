import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StationInput(),
            Padding(
              padding: EdgeInsets.all(1),
              child: Icon(Icons.keyboard_double_arrow_right_rounded),
            ),
            StationInput(),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class StationInput extends StatelessWidget {
  const StationInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(5),
      ),
      child: const TextField(
        textAlign: TextAlign.end,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
