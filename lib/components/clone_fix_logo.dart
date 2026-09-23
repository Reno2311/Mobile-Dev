import 'package:flutter/material.dart';

class CloneFixLogo extends StatelessWidget {
  final double fontSize;

  const CloneFixLogo({
    super.key,
    this.fontSize = 36.0,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Instagram',
          style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}