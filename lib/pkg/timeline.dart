import 'package:flutter/material.dart';

class TimelinePoint extends StatelessWidget {
  final bool isFirst;
  final double lineWidth;
  final Widget indicator;
  final double indicatorSize;
  final List<Widget> leftChildren;
  final double leftMargin;

  const TimelinePoint({super.key, 
    this.isFirst = false,
    required this.leftChildren,
    this.lineWidth = 2,
    this.indicatorSize = 15,
    this.leftMargin = 10,

    required this.indicator
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          TimelineSector(isFirst: isFirst, lineWidth: lineWidth, indicatorSize: indicatorSize, indicator: indicator),
          SizedBox(width: leftMargin),
          ...leftChildren
        ],
      ),
    );
  }
}

class TimelineSector extends StatelessWidget {
  static const double topMargin = 3;

  final bool isFirst;
  final double lineWidth;
  final Widget indicator;
  final double indicatorSize;
  
  const TimelineSector({
    super.key,
    this.isFirst = false,
    this.lineWidth = 2,
    this.indicatorSize = 15,
    required this.indicator
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: lineWidth,
          margin: EdgeInsets.only(top: isFirst ? topMargin : 0),
          color: Theme.of(context).colorScheme.onBackground,
        ),
        Padding(
          padding: const EdgeInsets.only(top: topMargin),
          child: SizedBox(
            width: indicatorSize,
            height: indicatorSize,
            child: indicator,
          ),
        ),
      ],
    );
  }
}