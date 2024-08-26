import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/avatar.png');
  }
}

class CircularAvatar extends StatelessWidget {
  const CircularAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
            blurRadius: 5,
            offset: const Offset(3, 3)
          )
        ],
      ),
      child: const CircleAvatar(
        radius: 80,
        backgroundImage: AssetImage('assets/avatar.png'),
      ),
    );
  }

}