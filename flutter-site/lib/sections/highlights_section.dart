import 'package:flutter/material.dart';
import 'package:profl/components/expertises.dart';
import 'package:profl/components/hardskills.dart';
import 'package:profl/theme.dart';
import '../components/connectors.dart';

import '../components/avatar.dart';
import '../components/passport.dart';

class HighlightsSection extends StatelessWidget {
  const HighlightsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onSurface,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Wrap(
        runSpacing: 40,
        children: [
          const Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            runSpacing: 20,
            children: [
              HighlightsSectionHead(),
              Connectors(),
            ],
          ),
          SelectionArea(
            child: Wrap(
              runSpacing: 30,
              children: [
                Wrap(
                  runSpacing: 20,
                  children: [
                    HardSkillsTrackCardContent(styleBuilder: invertedBackgroundStyleBuilder, withHeader: true),
                    const HardSkillTags(),
                  ],
                ),
                Expertises(styleBuilder: invertedBackgroundStyleBuilder, withHeader: true),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HighlightsSectionHead extends StatelessWidget {
  const HighlightsSectionHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SelectionArea(
      child: Row(
        children: [
          Expanded(
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 20,
              children: [
                CircularAvatar(),
                SizedBox(width: 20),
                PassportContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HighlightsSectionBody extends StatelessWidget {
  
  final List<Widget>? additionalWidgets;

  factory HighlightsSectionBody.plus(List<Widget>? additionalWidgets) {
    return HighlightsSectionBody(additionalWidgets: additionalWidgets);
  }

  const HighlightsSectionBody({
    super.key,
    this.additionalWidgets,
  });
  
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 30,
      children: [
        const Connectors(),
        const HardSkills(),
        if (additionalWidgets != null) ...additionalWidgets!,
      ],
    );
  }
}