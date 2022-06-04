import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme/pallet.dart';
import 'package:portfolio_flutter/theme/typography.dart';
import 'package:portfolio_flutter/widgets/skills.dart';

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
          backgroundColor: backgroundColor,
          centerTitle: false,
          leadingWidth: 0,
          toolbarHeight: 32,
          titleSpacing: 28,
          title: Text(
            'About me',
            style: fontSize24Bold,
          ),
        ),
        body: Container(
          color: backgroundColor,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            children: const [
              SizedBox(
                height: 148,
              ),
              Skills()
            ],
          ),
        ),
      ),
    );
  }
}
