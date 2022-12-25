import 'package:flutter/material.dart';

import '/pallete.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscure;

  const MyTextField({super.key, required this.hintText, required this.obscure});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: TextFormField(
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 3, color: Pallete.borderColor),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 3, color: Pallete.gradient2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
