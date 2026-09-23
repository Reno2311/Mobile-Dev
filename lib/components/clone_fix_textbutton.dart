import 'package:flutter/material.dart';

class CloneFixTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CloneFixTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: Color.fromARGB(137, 174, 22, 22), fontSize: 12),
      ),
    );
  }
}