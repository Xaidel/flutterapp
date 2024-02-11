import 'package:flutter/material.dart';
import 'cbox.dart';
import 'bodytitle.dart';
import 'inputfield.dart';
import 'signupbutton.dart';

// ignore: must_be_immutable
class BodyContainer extends StatelessWidget {
  bool? isChecked;
  BodyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    InputField field1 =
        InputField.createInstanceField("FULL NAME", "Enter your Full Name");
    InputField field2 = InputField.createInstanceField(
        "EMAIL ADDRESS", "Enter your Email Address");
    InputField field3 = InputField.createInstanceField(
        "PASSWORD", "Enter your Password",
        ot: true);
    return SingleChildScrollView(
      child: Container(
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
                      field1,
                      field2,
                      field3,
                      CBox(),
                      SignUpButton(onPressed: () {
                        if (field1.formKey != null &&
                            field1.formKey!.currentState!.validate()) {}
                        if (field2.formKey != null &&
                            field2.formKey!.currentState!.validate()) {}
                        if (field3.formKey!.currentState!.validate()) {}
                        if (isChecked ?? false) {
                          debugPrint("Pls Accept");
                        }
                      }),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
