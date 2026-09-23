
import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';

class MyTextfield extends StatelessWidget {
  // list variebel parameter yang digunakan 
  final String myhint;
  final TextEditingController txtController;
  final double radius;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  const MyTextfield({
    super.key, 
    required this.myhint, 
    required this.txtController, 
    required this.radius, 
    this.inputFormatters,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        hintText: myhint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}