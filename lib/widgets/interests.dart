import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme/pallet.dart';
import 'package:portfolio_flutter/theme/typography.dart';
import 'package:portfolio_flutter/widgets/interest.dart';

class Interests extends StatelessWidget {
  const Interests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Interests',
            style: fontSize20Bold,
          ),
          SizedBox(
            height: 26,
          ),
          Wrap(
            spacing: 4,
            runSpacing: 14,
            children: const [
              Interest(title: 'LOL'),
              Interest(title: 'Stand-up'),
              Interest(title: 'History'),
              Interest(title: 'Podcasts'),
              Interest(title: 'Starcraft 2'),
            ],
          )
        ],
      ),
    );
  }
}
