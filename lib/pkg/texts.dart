import 'package:flutter/material.dart';

class BodyMediumText extends StatelessWidget {
  final String data;

  const BodyMediumText(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}

class TitleMediumText extends StatelessWidget {
  final String data;

  const TitleMediumText(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}

class TitleSmallText extends StatelessWidget {
  final String data;
  
  const TitleSmallText(this.data, {super.key});
  
  @override
  Widget build(BuildContext context) {
    return Text(
      data, 
      style: Theme.of(context).textTheme.titleSmall
    );
  }
}