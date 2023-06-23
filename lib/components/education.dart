import 'dart:core';

import 'package:flutter/material.dart';
import 'package:profl/components/shadowcard.dart';

class EducationRecord {
  final String title;
  final String dates;
  final String issuer;
  final String issuerLogo;

  String get header => '$title / $dates';

  EducationRecord({
    required this.title,
    required this.dates,
    required this.issuer,
    required this.issuerLogo
  });
}

EducationRecord mirea = EducationRecord(
  title: 'Bachelor, Business Informatics',
  dates: '2012-2017',
  issuer: 'MIREA - Moscow Technological University',
  issuerLogo: 'mirea.png'
);

EducationRecord uwp = EducationRecord(
  title: 'Certified Solutions Associate',
  dates: '2019',
  issuer: 'Microsoft, Universal Windows Platform',
  issuerLogo: 'uwp.png'
);

class EducationTitle extends StatelessWidget {
  const EducationTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'EDUCATION',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class WideEducation extends StatelessWidget {
  const WideEducation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const EducationTitle(),
        const SizedBox(height: 10),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            EducationCard(mirea),
            EducationCard(uwp)
          ],
        ),
      ],
    );
  }
}

class EducationCard extends StatelessWidget {
  final EducationRecord record;
  
  const EducationCard(this.record, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: ShadowCard(child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(record.header, style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 3),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 5,
              children: [
                Image.asset('assets/${record.issuerLogo}', height: 10),
                Text(record.issuer, style: Theme.of(context).textTheme.bodyMedium),
              ],
            )
          ],
        )
      ),
    );
  }
}