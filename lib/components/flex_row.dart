import 'package:flutter/widgets.dart';

class FlexRow extends StatelessWidget {
  final List<Widget> children;
  final WrapAlignment alignment;
  final double spacing;
  final double runSpacing;

  const FlexRow({super.key, 
    this.alignment = WrapAlignment.start,
    this.spacing = 0,
    this.runSpacing = 0,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Wrap(
            alignment: alignment,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: spacing,
            runSpacing: runSpacing,
            children: children,
          ),
        )
      ]
    );
  }
}