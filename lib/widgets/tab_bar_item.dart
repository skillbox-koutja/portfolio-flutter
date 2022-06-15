import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme/pallet.dart';
import 'package:portfolio_flutter/theme/typography.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem(
      {Key? key,
      required this.select,
      required this.icon,
      required this.title,
      required this.selected})
      : super(key: key);

  final GestureTapCallback select;
  final Icon icon;
  final String title;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: select,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: EdgeInsets.all(14),
          color: selected ? itemColor : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon,
              SizedBox(
                height: 14,
              ),
              Text(
                title,
                style: fontSize16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
