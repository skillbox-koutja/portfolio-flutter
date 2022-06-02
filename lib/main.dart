import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme/typography.dart';
import 'package:portfolio_flutter/widgets/skill_progress.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leadingWidth: 0,
          title: const Text(
            'About me',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.amberAccent,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Skills',
                    style: fontSize24Bold,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SkillProgress(
                    value: 95,
                    name: 'UX',
                    color: Colors.purple,
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
