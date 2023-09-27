import 'package:flutter/material.dart';

import '../widgets/station.dart';

class RouteResult extends StatelessWidget {
  const RouteResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  '첫차 타기',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  '막차 타기',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.all(20),
          width: double.maxFinite,
          height: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ResultRow(
                  titleChild: Station(
                    koreanName: '구파발',
                    englishName: 'Gupabal',
                    line: '3',
                    isFirst: true,
                  ),
                  detailChild: Detail(),
                ),
                ResultRow(
                  titleChild: Container(
                    width: 30,
                    height: 15,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 234, 234, 234),
                        border: Border.symmetric(
                            vertical: BorderSide(color: Colors.black)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(color: Colors.black, offset: Offset(3, 3))
                        ]),
                  ),
                  // detailChild:
                ),
                const ResultRow(
                  titleChild: Station(
                      koreanName: '교대',
                      englishName: 'Samsung',
                      line: '2',
                      isLast: true),
                ),
                ResultRow(
                  titleChild: Container(
                    width: 30,
                    height: 15,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 234, 234, 234),
                        border: Border.symmetric(
                            vertical: BorderSide(color: Colors.black)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(color: Colors.black, offset: Offset(3, 3))
                        ]),
                  ),
                ),
                const ResultRow(
                  titleChild: Station(
                      koreanName: '삼성', englishName: 'Samsung', line: '2'),
                  detailChild: Text('막차! 이번 열차가 오늘 '), //마지막 열차예요'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ResultRow extends StatelessWidget {
  final Widget titleChild;
  final Widget? detailChild;

  const ResultRow({super.key, required this.titleChild, this.detailChild});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TitleContainer(child: titleChild),
        const SizedBox(width: 15),
        detailChild ?? const SizedBox(),
      ],
    );
  }
}

class Detail extends StatelessWidget {
  const Detail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final times = ['08:00', '09:00'];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              '출발',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(width: 10),
            DropdownButton(
                items: times
                    .map((time) =>
                        DropdownMenuItem(value: time, child: Text(time)))
                    .toList(),
                onChanged: (value) => {print(value)}),
          ],
        ),
        const Text('환승 3-3, 7-2',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        const SizedBox(height: 8),
        const Text('이번 열차는 구파발발 열차! 🚋'),
        const Text('다음 열차는 3분 후! 17:22'),
      ],
    );
  }
}

class TitleContainer extends StatelessWidget {
  final Widget child;
  const TitleContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: child,
    );
  }
}
