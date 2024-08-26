import 'package:flutter/material.dart';
import 'package:profl/pkg/texts.dart';

class CardBody extends StatelessWidget {
  final Widget header;
  final Widget subheader;
  final Widget description;

  const CardBody({
    super.key,
    required this.header,
    required this.subheader,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header,
        const SizedBox(height: 3),
        subheader,
        const SizedBox(height: 3),
        Row(
          children: [
            Expanded(
              child: description,
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}


class CardSubheader extends StatelessWidget {
  final String? leadingImage;
  final String text;

  const CardSubheader({super.key, 
    this.leadingImage,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        if (leadingImage != null)
          Image(
            image: AssetImage('assets/${leadingImage!}'),
            width: 10,
            height: 10,
          ),
        TitleSmallText(text)
      ],
    );
  }
}