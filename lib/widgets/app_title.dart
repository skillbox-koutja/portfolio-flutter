import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme/typography.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Text(
        'About me',
        style: fontSize24Bold,
      ),
    );
  }
}
