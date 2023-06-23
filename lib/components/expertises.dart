// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:profl/pkg/tracks.dart';
import 'package:profl/pkg/color_invert.dart';

TrackData microservices = TrackData('Microservices', 0.95);
TrackData leadership = TrackData('Leadership', 0.9);
TrackData scrum = TrackData('Scrum', 0.9);
TrackData devops = TrackData('DevOps', 0.85);
TrackData blockchain = TrackData('Blockchain', 0.8);

List<TrackData> records = [
  microservices,
  devops,
  leadership,
  scrum,
  blockchain,
];

class Expertises extends StatelessWidget {

  final TrackStyleBuilder? styleBuilder;
  final bool withHeader;

  const Expertises({super.key, 
    this.styleBuilder,
    this.withHeader = false,
  });

  @override
  Widget build(BuildContext context) {
    return TrackCardContent.fromData(
      records,
      styleBuilder: styleBuilder,
      header: withHeader ? '''I AM GOOD AT''' : null,
      headerStyleBuilder: (color) => color.withInvertedColor(),
    );
  }
}