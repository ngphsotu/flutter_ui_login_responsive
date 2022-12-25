import 'package:flutter/material.dart';

import '/pallete.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: const LinearGradient(
          end: Alignment.topRight,
          begin: Alignment.bottomLeft,
          colors: [Pallete.gradient1, Pallete.gradient2, Pallete.gradient3],
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        child: const Text(
          'Sign in',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
