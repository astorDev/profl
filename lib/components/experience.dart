import 'package:flutter/material.dart';
import 'package:profl/pkg/card_body.dart';
import 'package:profl/pkg/texts.dart';
import 'package:profl/pkg/timeline.dart';

import 'companies.dart';

class ExperienceRecord {
  final String title;
  final Company company;
  final String description;
  final String location;
  final String period;

  String get header => '$title / $period';
  String get subheader => '${company.name}, $location';

  const ExperienceRecord({
    required this.title,
    required this.company,
    required this.description,
    required this.location,
    required this.period
  });
}

ExperienceRecord ankrLead = ExperienceRecord(
  title: 'Lead Software Engineer', 
  company: ankr,
  description: '''Led a small team, developing blockchain nodes load balancer.
Switched with the team from C# to Go (Golang).''', 
  location: 'Remote', 
  period: '2023'
);

ExperienceRecord securrencySenior = ExperienceRecord(
  title: 'Senior Software Engineer', 
  company: securrency,
  description: '''Was part of the team developing a tokenization platform.
Created resilient blockchain-based APIs and microservices with C#, .NET Core, MS SQL, NServiceBus, RabbitMQ''',
  location: 'Abu Dhabi', 
  period: '2021 - 2023'
);

ExperienceRecord pickpointArchitect = ExperienceRecord(
  title: 'Software Architect', 
  company: pickpoint, 
  description: '''Supervised 2 teams, leading them from monolith to microservices and implementing Scrum practices. 
Armed the company with cutting-edge services on .NET Core WebApi, RabbitMQ, ElasticSearch, MongoDb, Redis and Postgres.''', 
  location: 'Moscow', 
  period: '2020 - 2021'
);

ExperienceRecord pickpointEngineer = ExperienceRecord(
  title: 'Software Engineer', 
  company: pickpoint, 
  description: '''Participated in the logistical company software transformation. 
Shaped the department vision, using ASP .NET MVC, EF Core, MS SQL, Angular, Docker.''', 
  location: 'Moscow', 
  period: '2018 - 2020'
);

ExperienceRecord wssJunior = ExperienceRecord(
  title: 'Software Engineer', 
  company: wss,
  description: '''Implemented custom modules in SaaS Document Management System. 
Provided the new functionality, utilizing C#, ASP.NET MVC, MS SQL, JavaScript, jQuery''',
  location: 'Moscow', 
  period: '2017 - 2018'
);

class WideExperience extends StatelessWidget {
  final double space;

  const WideExperience({
    super.key,
    required this.space
  });
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(child: SelectionArea(child: ExperienceWidePointColumn())),
            SizedBox(width: space),
            const Expanded(child: CompaniesGrid())
          ],
        ),
      ),
    );
  }
}

class ExperienceWidePointColumn extends StatelessWidget {
  const ExperienceWidePointColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExperienceWidePoint.first(ankrLead),
        ExperienceWidePoint(securrencySenior),
        ExperienceWidePoint(pickpointArchitect),
        ExperienceWidePoint(pickpointEngineer),
        ExperienceWidePoint(wssJunior),
      ],
    );
  }
}

class NarrowExperience extends StatelessWidget {
  const NarrowExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExperienceNarrowPoint([ankrLead], isFirst: true),
        ExperienceNarrowPoint([securrencySenior]),
        ExperienceNarrowPoint([pickpointArchitect, pickpointEngineer]),
        ExperienceNarrowPoint([wssJunior]),
      ],
    );
  }
}

class ExperienceNarrowPoint extends StatelessWidget {
  
  final List<ExperienceRecord> records;
  final bool isFirst;

  const ExperienceNarrowPoint(this.records, {super.key,  this.isFirst = false });
  
  @override
  Widget build(BuildContext context) {
    return TimelinePoint(
      isFirst: isFirst,
      indicator: const ExperienceTimelineIndicator(),
      leftChildren: [
          Expanded(
            child: SelectionArea(
              child: Column(
                children: records.map(_cardBody).toList()
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CompanyCard(records.first.company),
              const SizedBox(height: 20),
            ],
          )
      ]);
  }

  static CardBody _cardBody(ExperienceRecord record) => CardBody(
    header: TitleMediumText('${record.title}\n${record.period}'),
    subheader: TitleSmallText(record.location),
    description: BodyMediumText(record.description)
  );
}

class ExperienceWidePoint extends StatelessWidget {

  final ExperienceRecord record;
  final bool isFirst;

  factory ExperienceWidePoint.first(ExperienceRecord record) => ExperienceWidePoint(record, isFirst: true);

  const ExperienceWidePoint(this.record, {super.key, this.isFirst = false});
  
  @override
  Widget build(BuildContext context) {
    return TimelinePoint(
      isFirst: isFirst,
      indicator: const ExperienceTimelineIndicator(),
      leftChildren: [
        Expanded(
            child: CardBody(
              header: TitleMediumText('${record.title} / ${record.period}'),
              subheader: CardSubheader(leadingImage: record.company.logo, text: '${record.company.name}, ${record.location}'),
              description: BodyMediumText(record.description),
            ),
          )
      ]
    );
  }
}

class ExperienceTimelinePoint extends StatelessWidget {
  
    final ExperienceRecord record;
    final bool isFirst;
  
    const ExperienceTimelinePoint(this.record, {super.key, this.isFirst = false});
    
    @override
    Widget build(BuildContext context) {
      return TimelinePoint(
        isFirst: isFirst,
        indicator: const ExperienceTimelineIndicator(),
        leftChildren: [
          Expanded(
            child: CardBody(
              header: TitleMediumText('${record.title} / ${record.period}'),
              subheader: CardSubheader(leadingImage: record.company.logo, text: '${record.company.name}, ${record.location}'),
              description: BodyMediumText(record.description),
            ),
          )
        ],
      );
    }
}

class ExperienceTimelineIndicator extends StatelessWidget {
  const ExperienceTimelineIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              shape: BoxShape.circle),
        ),
        Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                  width: constraints.maxWidth * 0.6,
                  height: constraints.maxHeight * 0.6,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSurface,
                      shape: BoxShape.circle));
            },
          ),
        ),
      ],
    );
  }
}