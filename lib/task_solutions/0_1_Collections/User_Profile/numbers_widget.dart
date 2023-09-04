import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({super.key});

  @override
  Widget build(BuildContext context) => IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildButton(context, '4.9', 'Ranking'),
            buildDivider(),
            buildButton(context, '18', 'Following'),
            buildDivider(),
            buildButton(context, '1.5M', 'Followers'),
          ],
        ),
      );

  Widget buildDivider() => const SizedBox(
        height: 24,
        child: VerticalDivider(),
      );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
          onPressed: () {},
          padding: const EdgeInsets.symmetric(vertical: 12),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                value,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                    color: Color(0xFF260509)),
              ),
              const SizedBox(height: 2),
              Text(
                text,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF260509)),
              ),
            ],
          ));
}
