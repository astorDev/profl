import 'package:flutter/material.dart';

import '../components/education.dart';
import '../components/experience.dart';
import '../components/expertises.dart';
import '../components/mystory.dart';

class ArticleWide extends StatelessWidget {

  final bool scrollable;

  const ArticleWide({super.key, this.scrollable = false});
  
  @override
  Widget build(BuildContext context) {
    if (scrollable == true) {
      return const SingleChildScrollView(
        child: ArticleWideBody(expandExperience: false),
      );
    } else {
      return const ArticleWideBody(expandExperience: true);
    }
  }
}

class ArticleWideBody extends StatelessWidget {
  final bool expandExperience;
  static const double space = 30;

  const ArticleWideBody({
    super.key,
    this.expandExperience = false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(children: [
            Expanded(child: MyStory()),
            SizedBox(width: space),
            Expanded(child: SelectionArea(child: Expertises()))
          ],),
          const SizedBox(height: 20),
          expandExperience ? const Expanded(child: WideExperience(space: space,)) : const WideExperience(space: space,),
          const SizedBox(height: 20),
          const WideEducation()
        ],
      ),
    );
  }
}