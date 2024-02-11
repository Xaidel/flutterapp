import 'package:flutter/material.dart';
import 'cbox.dart';
import 'bodytitle.dart';
import 'inputfield.dart';
import 'signupbutton.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    InputField field1 =
        InputField.createInstanceField("FULL NAME", "Enter your Full Name");
    InputField field2 =
        InputField.createInstanceField("USERNAME", "Enter your Username");
    InputField field3 =
        InputField.createInstanceField("PASSWORD", "Enter your Password");
    return Container(
      color: const Color(0xffF55D5C),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(100.0),
          ),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                const BodyTitle(),
                Column(
                  children: [
                    field1.build(context),
                    field2.build(context),
                    field3.build(context),
                    const CBox(),
                    const SignUpButton(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
