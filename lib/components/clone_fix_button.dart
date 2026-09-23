import 'package:flutter/material.dart';

class CloneFixButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double radius;

  const CloneFixButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.radius = 6.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF3797EF),
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 14),    
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }
}