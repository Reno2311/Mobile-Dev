import 'package:flutter/material.dart';

class CloneFixTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String myhint;
  final double radius;
  final bool isObscure;

  const CloneFixTextfield({
    super.key,
    this.controller,
    required this.myhint,
    required this.radius,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: myhint, 
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        filled: true,
        fillColor: const Color(0xFFFAFAFA),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
        ),
      ),
    );
  }
}