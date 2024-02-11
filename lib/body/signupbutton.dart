import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final Function()? onPressed;
  const SignUpButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: OutlinedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide.none,
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(
              horizontal: 113.0,
              vertical: 15.0,
            ),
          ),
          backgroundColor:
              const MaterialStatePropertyAll<Color>(Color(0xffF55D5C)),
        ),
        onPressed: onPressed,
        child: const Text(
          "Sign up",
          style: TextStyle(
            fontFamily: "Poppins-Bold",
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
