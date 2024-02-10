import 'package:flutter/material.dart';

class BodyTitle extends StatelessWidget {
  const BodyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Sign up",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffF55D5C),
            fontSize: 53.0,
            fontFamily: 'Poppins-Bold',
          ),
        ),
        Text(
          "Sign in to Continue.",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.grey.shade700,
            fontFamily: 'DMSans-Light',
          ),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
