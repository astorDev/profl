import 'package:flutter/material.dart';

String loremIpsumText = '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper dapibus erat, vitae lobortis mi bibendum non. Donec finibus turpis et eleifend varius. Vestibulum et velit ligula.
''';

class LoremIpsum extends StatelessWidget {
  final int paragraphs;

  const LoremIpsum({super.key, this.paragraphs = 1});
  
  @override
  Widget build(BuildContext context) {
    var finalText = '';
    for (var i = 0; i < paragraphs; i++) {
      finalText += loremIpsumText;
    }

    return Text(
      finalText,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}

class OrangeBox extends StatelessWidget {
  
  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;
  final EdgeInsets? padding;


  const OrangeBox({super.key,  this.height, this.width, this.color, this.child, this.padding });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.deepOrangeAccent,
          width: 1,
        ),
      ),
      child: child,
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Header',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}