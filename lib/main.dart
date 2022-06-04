import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme/pallet.dart';
import 'package:portfolio_flutter/theme/typography.dart';
import 'package:portfolio_flutter/widgets/app_title.dart';
import 'package:portfolio_flutter/widgets/interests.dart';
import 'package:portfolio_flutter/widgets/skills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          color: backgroundColor,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppTitle(),
                SizedBox(
                  height: 148,
                ),
                Skills(),
                SizedBox(
                  height: 48,
                ),
                Interests(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
