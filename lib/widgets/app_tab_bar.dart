import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme/pallet.dart';
import 'package:portfolio_flutter/widgets/tab_bar_item.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Row(
        children: [
          TabBarItem(
            title: 'About me',
            selected: true,
            select: () => print('about me'),
            icon: Icon(
              Icons.person,
              color: textColor,
            ),
          ),
          TabBarItem(
            title: 'Experience',
            selected: true,
            select: () => print('Experience'),
            icon: Icon(Icons.cases_rounded, color: textColor),
          ),
          TabBarItem(
            title: 'Education',
            selected: false,
            select: () => print('Education'),
            icon: Icon(Icons.school, color: textColor),
          ),
        ],
      ),
    );
  }
}
