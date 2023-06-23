import 'package:flutter/material.dart';

String aboutMe = '''I'm a software developer with over 6 years of experience, specializing in building cutting-edge services for companies across different industries, most recently in finance and blockchain. Throughout my career, I've led several fantastic development teams. My craft is developing C# and .NET backend apps with various SQL and NoSQL databases behind, with occasional front-end gigs using Flutter, React or Angular.''';

class MyStory extends StatelessWidget {

  final double? maxWidth;

  const MyStory({super.key, this.maxWidth});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'MY STORY',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text(
            aboutMe,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
