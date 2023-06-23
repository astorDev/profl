import 'package:flutter/material.dart';

import '../components/education.dart';
import '../components/experience.dart';
import '../components/mystory.dart';

class ArticleNarrow extends StatelessWidget {
  final double space = 20;
  final EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 20);

  const ArticleNarrow({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Wrap(
          runSpacing: 30,
          children: [
            Padding(
              padding: padding,
              child: const MyStory(),
            ),
            Padding(
              padding: padding.copyWith(left: 2),
              child: const NarrowExperience(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: WideEducation(),
            )
          ],
        ),
      ),
    );
  }
}