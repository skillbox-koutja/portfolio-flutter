import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme/pallet.dart';
import 'package:portfolio_flutter/theme/typography.dart';

class Experience extends StatelessWidget {
  const Experience({
    Key? key,
    required this.employment,
    required this.period,
    required this.company,
    required this.color,
  }) : super(key: key);

  final String employment;
  final String period;
  final String company;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.all(24),
        color: itemColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                padding: EdgeInsets.all(14),
                color: color,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.cases_rounded,
                      color: textColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 18,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    employment,
                    style: fontSize18Bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '$period',
                        style: fontSize16,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '·',
                        style: fontSize16,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        company,
                        style: fontSize16,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
