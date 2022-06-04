import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme/pallet.dart';
import 'package:portfolio_flutter/theme/typography.dart';
import 'package:portfolio_flutter/widgets/skill_progress.dart';

const _skillsSpace = SizedBox(
  height: 28,
);

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: itemColor,
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Skills',
              style: fontSize20Bold,
            ),
            const SizedBox(
              height: 26,
            ),
            const SkillProgress(
              value: 60,
              name: 'Dart',
              color: Colors.purple,
            ),
            _skillsSpace,
            const SkillProgress(
              value: 60,
              name: 'Flutter',
              color: Colors.tealAccent,
            ),
            _skillsSpace,
            const SkillProgress(
              value: 25,
              name: 'UX',
              color: Colors.amberAccent,
            ),
            _skillsSpace,
            const SkillProgress(
              value: 65,
              name: 'Soft skills',
              color: Colors.pinkAccent,
            ),
            const SizedBox(
              height: 26,
            ),
          ],
        ),
      ),
    );
  }
}
