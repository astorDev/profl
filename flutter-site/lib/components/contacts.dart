import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profl/profl_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import 'flex_row.dart';

Uri githubUrl = Uri.parse('http://github.com/astorDev');
Uri linkedinUrl = Uri.parse('http://linkedin.com/in/astorDev/');
String email = 'vosarat1995@gmail.com';

class Contacts extends StatelessWidget {
  const Contacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlexRow(
      children: [
        ContactIconButton(ProflIcons.github, () => launchUrl(githubUrl)),
        const SizedBox(width: 5,),
        ContactIconButton(ProflIcons.linkedin, () => launchUrl(linkedinUrl)),
        const SizedBox(width: 5,),
        Text('|', style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontSize: 30
        ),),
        const SizedBox(width: 5,),
        const EmailBlock(),
      ],
    );
  }
}

class EmailBlock extends StatelessWidget {
  const EmailBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
      ),
      onPressed: () {
        Clipboard.setData(ClipboardData(text: email)).then((_){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Email address copied to clipboard")));
        }); 
      },
      icon: const ContactIcon(Icons.email),
      label: Text(email,
        style: TextStyle(
          color: Theme.of(context).colorScheme.background,
          decorationColor: Theme.of(context).colorScheme.background,
          decoration: TextDecoration.underline,
          fontSize: 14
        ),
      ));
  }
}

class ContactIconButton extends StatelessWidget {
  final IconData data;
  final void Function()? onPressed;

  const ContactIconButton(this.data, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      constraints: const BoxConstraints(),
      padding: const EdgeInsets.all(4),
      icon: ContactIcon(data)
    );
  }
}

class ContactIcon extends StatelessWidget {
  final IconData data;

  const ContactIcon(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
        data,
        size: 25,
        color: Theme.of(context).colorScheme.background,
      );
  }
}