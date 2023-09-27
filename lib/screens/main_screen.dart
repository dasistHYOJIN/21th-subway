import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/search_form.dart';
import '../widgets/route_result.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 177, 249, 115),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              MainTape(),
              SizedBox(height: 15),
              Search(),
              SizedBox(height: 20),
              RouteResult(),
              AnimatedSmoothIndicator(
                activeIndex: 0,
                count: 6,
                effect: WormEffect(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MainTape extends StatelessWidget {
  const MainTape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2),
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(175, 138, 136, 136),
        Color.fromARGB(88, 255, 255, 255)
      ])),
      child: Transform.scale(
        scale: 2,
        child: const Text(
          '21세기지하철21세기지하철21세기지하철21세기지하철21세기지하철21세기지하철21세기지하철21세기지하철21세기지하철21세기지하철21세기지하철21세기지하철21세기',
          overflow: TextOverflow.clip,
          style: TextStyle(color: Colors.white, fontSize: 6),
        ),
      ),
    );
  }
}
