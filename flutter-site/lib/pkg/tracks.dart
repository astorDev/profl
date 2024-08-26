import 'package:flutter/material.dart';
import 'package:profl/pkg/color_invert.dart';

class TrackData {
  String name;
  double level;

  TrackData(this.name, this.level);
}

class TrackStyleBuilder {
  TextStyle Function(TextStyle)? labelStyle;
  Color Function(ColorScheme)? valueColor;

  TrackStyleBuilder({
    this.labelStyle,
    this.valueColor,
  });
}

class TrackCardContent extends StatelessWidget {
 final List<Widget> tracks;
 final String? header;
 final TextStyle Function(TextStyle)? headerStyleBuilder;
  
 const TrackCardContent(this.tracks, {super.key,  this.header, this.headerStyleBuilder });
 
  factory TrackCardContent.fromData(List<TrackData> data, { 
    TrackStyleBuilder? styleBuilder,
    String? header, 
    TextStyle Function(TextStyle)? headerStyleBuilder 
  }) {
    return TrackCardContent(
      data.map((e) => Track(e,
        labelStyleFromTheme: styleBuilder?.labelStyle,
        valueColorFromScheme: styleBuilder?.valueColor,
      )).toList(),
      header: header,
      headerStyleBuilder: headerStyleBuilder,
    );
  }

 @override
  Widget build(BuildContext context) {    
    return Wrap(
      runSpacing: 10,
      children: [ 
        if (header != null) _buildHeaderWidget(context),
        ...tracks
      ]
    );
  }

  Widget _buildHeaderWidget(BuildContext context) {
    var originalStyle = Theme.of(context).textTheme.headlineLarge!;

    return Text(header!, style: headerStyleBuilder?.call(originalStyle) ?? originalStyle);
  }
}

class Track extends StatelessWidget {
  final TrackData data;
  final TextStyle? labelStyle;
  final Color? backgroundColor;
  final Color? valueColor;
  final TextStyle Function(TextStyle)? labelStyleFromTheme;
  final Color Function(ColorScheme)? valueColorFromScheme;
  
  factory Track.onInversedBackground(TrackData data) {
    return Track(
      data,
      labelStyleFromTheme: (theme) => theme.withInvertedColor(opacity: 0.7),
      valueColorFromScheme: (scheme) => scheme.primary,
    );
  }
  
  const Track(this.data, {super.key, 
    this.labelStyle,
    this.backgroundColor,
    this.valueColor,
    this.labelStyleFromTheme,
    this.valueColorFromScheme,
  });

  @override
  Widget build(BuildContext context) {
    var labelThemeStyle = Theme.of(context).textTheme.labelMedium!;
    var colorTheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(data.name, style: labelStyle ?? labelStyleFromTheme?.call(labelThemeStyle) ?? labelThemeStyle),
        LinearProgressIndicator(
          value: data.level,
          backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.tertiary,
          valueColor: AlwaysStoppedAnimation<Color>(valueColor ?? valueColorFromScheme?.call(colorTheme) ?? colorTheme.onBackground),
        ),
      ],
    );
  }
}
