import 'package:flutter/material.dart';
import 'package:profl/pkg/tracks.dart';
import 'package:profl/pkg/color_invert.dart';

import '../theme.dart';

TrackData csharp = TrackData('C# / .NET', 0.97);
TrackData sql = TrackData('SQL', 0.9);
TrackData nosql = TrackData('NoSQL', 0.95);
TrackData flutter = TrackData('Flutter', 0.87);

List<TrackData> records = [
  csharp,
  sql,
  nosql,
  flutter
];

String aspnet = "ASP.NET";
String webapi = "Web API";
String mvc = "MVC";
String ef = "EF Core";

String mssql = "MS SQL";
String postgres = "PostgreSQL";
String mongo = "MongoDB";
String redis = "Redis";

String docker = "Docker";
String rabbitmq = "RabbitMQ";
String elasticsearch = "Elasticsearch";

List<String> tags = [
  aspnet,
  webapi,
  mvc,
  ef,
  mssql,
  postgres,
  mongo,
  redis,
  docker,
  rabbitmq,
  elasticsearch
];

class HardSkillsTrackCardContent extends StatelessWidget {
  final bool withHeader;
  final TrackStyleBuilder? styleBuilder;

  const HardSkillsTrackCardContent({super.key, 
    this.withHeader = false,
    this.styleBuilder
  });
  
  @override
  Widget build(BuildContext context) {
    return TrackCardContent.fromData(
      records,
      styleBuilder: styleBuilder,
      header: withHeader ? '''I USE''' : null,
      headerStyleBuilder: (color) => color.withInvertedColor(),
    );
  }
}

class HardSkillTrackColumn extends StatelessWidget {
  const HardSkillTrackColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return TrackCardContent([
        Track.onInversedBackground(csharp),
        Track.onInversedBackground(sql),
        Track.onInversedBackground(nosql),
        Track.onInversedBackground(flutter),
    ]);
  }
}

class HardSkillTrack extends StatelessWidget {
  final TrackData data;
  
  const HardSkillTrack(this.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Track(data,
      labelStyle: Theme.of(context).textTheme.labelMedium!.withInvertedColor(opacity: 0.7)
    );
  }
}

class HardSkills extends StatelessWidget {
  final bool withTitle;

  const HardSkills({
    super.key,
    this.withTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Wrap(
        runSpacing: 20,
        children: [
          HardSkillsTrackCardContent(
            withHeader: withTitle,
            styleBuilder: invertedBackgroundStyleBuilder
          ),
          const SizedBox(height: 20),
          const HardSkillTags()
        ],
      ),
    );
  }
}

class HardSkillsHeader extends StatelessWidget {
  const HardSkillsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '''I USE''',
      style: Theme.of(context).textTheme.headlineLarge!.withInvertedColor(),
    );
  }

}

class HardSkillTags extends StatelessWidget {
  const HardSkillTags({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 10,
      runSpacing: 5,
      children: tags.map((e) => SkillTag(e)).toList(),
    );
  }
}

class SkillTag extends StatelessWidget {
  final String label;
  
  const SkillTag(this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
              blurRadius: 5,
              offset: const Offset(1, 1)
            )
          ],
          borderRadius: BorderRadius.circular(5)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Text(
          label,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
            color: Theme.of(context).colorScheme.background
          ),
        ),
      ),
    );
  }
}