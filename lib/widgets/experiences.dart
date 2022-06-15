import 'package:flutter/material.dart';
import 'package:portfolio_flutter/widgets/experience.dart';

const _experiencesSpace = SizedBox(
  height: 28,
);

class Experiences extends StatelessWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Experience(
            employment: 'Frontend developer',
            period: '2021 - Now',
            company: 'Yandex',
            color: Colors.purple,
          ),
          _experiencesSpace,
          Experience(
            employment: 'Tech-lead & Fullstack-developer',
            period: '2020 - 2021',
            company: 'Modeltech',
            color: Colors.tealAccent,
          ),
          _experiencesSpace,
          Experience(
            employment: 'Middle Fullstack-developer',
            period: '2015 - 2020',
            company: 'Modeltech',
            color: Colors.amberAccent,
          ),
          _experiencesSpace,
          Experience(
            employment: 'Junior Fullstack developer',
            period: '2013 - 2015',
            company: 'Modeltech',
            color: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }
}
