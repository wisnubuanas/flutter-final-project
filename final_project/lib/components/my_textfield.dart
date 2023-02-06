import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final TextCapitalization textCapitalization;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.textCapitalization,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        style: TextStyle(color: Colors.white),
        controller: controller,
        obscureText: obscureText,
        textCapitalization: textCapitalization,
        decoration: InputDecoration(
            // enabledBorder: const OutlineInputBorder(
            //   borderSide: BorderSide(color: Colors.grey),
            // ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            fillColor: Colors.grey.shade800,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
