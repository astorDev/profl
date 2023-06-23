import 'package:flutter/material.dart';
import 'package:profl/pkg/color_invert.dart';

import 'contacts.dart';
import 'cv_download_button.dart';
import 'flex_row.dart';

class Connectors extends StatelessWidget {
  
  final bool useHeaders;

  const Connectors({super.key, this.useHeaders = false});
  
  @override
  Widget build(BuildContext context) {
    return FlexRow(
      alignment: WrapAlignment.spaceBetween,
      runSpacing: 10,
      children: [
        if (useHeaders) const ConnectorHeader('REACH ME'),
        const IntrinsicWidth(child: Contacts()),
        if (useHeaders) const ConnectorHeader('OR'),
        const IntrinsicWidth(child: CVDownloadButton())
      ]
    );
  }
}

class ConnectorHeader extends StatelessWidget {
  final String text;
  
  const ConnectorHeader(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, 
          style: Theme.of(context).textTheme.headlineLarge!.withInvertedColor(),
        ),
      ],
    );
  }
}