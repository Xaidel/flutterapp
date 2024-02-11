// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  String? _fieldLabel;
  String? _fieldHint;
  bool? _obscureText;
  GlobalKey<FormState>? formKey;

  InputField({super.key});

  set fieldLabel(String? fieldLabel) => _fieldLabel = fieldLabel;
  set fieldHint(String? fieldHint) => _fieldHint = fieldHint;
  set obscureText(bool? obsureText) => _obscureText = obsureText;

  InputField.createInstanceField(String? fl, String? fh,
      {super.key, bool? ot}) {
    fieldLabel = fl;
    fieldHint = fh;
    obscureText = ot;
  }

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    widget.formKey = _formKey;
    return Form(
      key: _formKey,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget._fieldLabel ?? "No Label Specified",
              style: TextStyle(
                letterSpacing: 0.5,
                color: Colors.grey.shade700,
                fontSize: 12.0,
                fontFamily: 'DMSans-Light',
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              validator: (value) {
                return validateInput(value);
              },
              obscureText: widget._obscureText ?? false,
              decoration: InputDecoration(
                hintText: widget._fieldHint,
                hintStyle: const TextStyle(
                  letterSpacing: 1.0,
                  fontFamily: 'DMSans-Light',
                  color: Color(0xff4d4c4c),
                  fontSize: 12.0,
                ),
                filled: true,
                fillColor: Colors.grey.shade300,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(17.0),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  String? validateInput(String? input) {
    if (widget._fieldLabel == "FULL NAME") {
      return validateFullName(input);
    }
    if (widget._fieldLabel == "EMAIL ADDRESS") {
      return validateEmail(input);
    }
    if (widget._fieldLabel == "PASSWORD") {
      return validatePassword(input);
    }

    return null;
  }

  String? validateFullName(String? value) {
    RegExp regex = RegExp(r'^[a-zA-Z]+(?:\s[a-zA-Z]+)*$');
    if (value == null || value.isEmpty) {
      return "Enter your Full Name";
    }
    if (!regex.hasMatch(value)) {
      return "Is that a valid Full Name?";
    }
    return null;
  }

  String? validateEmail(String? value) {
    RegExp regex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (value == null || value.isEmpty) {
      return "Enter an Email Address";
    }
    if (!regex.hasMatch(value)) {
      return "Enter valid email address";
    }
    return null;
  }

  String? validatePassword(String? value) {
    RegExp regex = RegExp(r'^(?=.*[A-Z])(?=.*[\W_]).{8,}$');
    if (value == null || value.isEmpty) {
      return "Enter a Valid Password";
    }
    if (!regex.hasMatch(value)) {
      return "Enter a Strong Password";
    }
    return null;
  }
}
