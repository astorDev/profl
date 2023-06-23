import 'package:flutter/material.dart';

class PassportContent extends StatelessWidget {
  const PassportContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Name(),
        SizedBox(height: 10),
        Title(),
        About()
      ],
    );
  }
}

class About extends StatelessWidget {
  const About({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        'Building cutting-edge backend services with C# and .NET for 6+ years',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.background.withOpacity(0.6)
          ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Text(
        'SOFTWARE DEVELOPER',
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
          color: Theme.of(context).colorScheme.background.withOpacity(0.6)
        ),
      ),
    );
  }
}

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    var baseStyle = Theme.of(context).textTheme.displayLarge!;


    return Text(
      'EGOR TARASOV', 
      style: baseStyle.copyWith(
        color: Theme.of(context).colorScheme.background,
      ),
    );
  }
}