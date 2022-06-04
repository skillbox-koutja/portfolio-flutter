import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme/typography.dart';

class SkillProgress extends StatelessWidget {
  const SkillProgress({
    Key? key,
    required this.value,
    required this.name,
    required this.color,
  }) : super(key: key);

  final int value;
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: fontSize18Bold,
            ),
            Text(
              '$value%',
              style: fontSize18Bold,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: value / 100,
            color: color,
            backgroundColor: Colors.white,
            minHeight: 8,
          ),
        )
      ],
    );
  }
}
