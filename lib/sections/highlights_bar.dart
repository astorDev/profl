import 'package:flutter/material.dart';
import 'package:profl/components/hardskills.dart';
import 'package:profl/theme.dart';

import '../components/avatar.dart';
import '../components/connectors.dart';
import '../components/passport.dart';

class HighlightsBar extends StatelessWidget {

  static const EdgeInsets padding = EdgeInsets.symmetric(horizontal: 25);

  const HighlightsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      color: Theme.of(context).colorScheme.onSurface,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectionArea(child: HighlightsBarHead(padding: padding)),
          Expanded(child: HighlightsBarBody(padding: padding)),
        ],
      )
    );
  }
}

class HighlightsBarHead extends StatelessWidget {
  final EdgeInsets padding;
  
  const HighlightsBarHead({
    super.key,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20,
      children: [
        const Avatar(),
        const SizedBox(height: 20),
        Padding(
          padding: padding,
          child: const PassportContent(),
        ),
      ],
    );
  }
}

class HighlightsBarBody extends StatelessWidget {
  const HighlightsBarBody({
    super.key,
    this.padding,
  });

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Connectors(),
          Expanded(child: SelectionArea(child: HardSkillsSection()))
        ],
      ),
    );
  }
}

class HardSkillsSection extends StatelessWidget {
  const HardSkillsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HardSkillsTrackCardContent(styleBuilder: invertedBackgroundStyleBuilder, withHeader: false),
        const SizedBox(height: 20),
        const HardSkillTags()
      ],
    );
  }
}