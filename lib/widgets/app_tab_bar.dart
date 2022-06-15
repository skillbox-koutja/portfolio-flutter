import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_flutter/theme/pallet.dart';
import 'package:portfolio_flutter/widgets/tab_bar_item.dart';

enum AppTabBarItems {
  aboutMe,
  education,
  experience,
}

// Здесь все довольно очевидно
class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key, required this.currentTab}) : super(key: key);

  final AppTabBarItems currentTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Row(
        children: [
          TabBarItem(
            title: 'About me',
            selected: currentTab == AppTabBarItems.aboutMe,
            select: () {
              GoRouter.of(context).go('/');
            },
            icon: const Icon(
              Icons.person,
              color: textColor,
            ),
          ),
          TabBarItem(
            title: 'Experience',
            selected: currentTab == AppTabBarItems.experience,
            select: () {
              GoRouter.of(context).go('/experience');
            },
            icon: const Icon(
              Icons.cases_rounded,
              color: textColor,
            ),
          ),
          TabBarItem(
            title: 'Education',
            selected: currentTab == AppTabBarItems.education,
            select: () {
              GoRouter.of(context).go('/education');
            },
            icon: const Icon(
              Icons.school,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
