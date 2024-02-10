// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  String? _fieldLabel;
  String? _fieldHint;

  InputField({super.key});

  set fieldLabel(String? fieldLabel) => _fieldLabel = fieldLabel;
  set fieldHint(String? fieldHint) => _fieldHint = fieldHint;

  InputField.createInstanceField(String? fl, String? fh, {super.key}) {
    fieldLabel = fl;
    fieldHint = fh;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$_fieldLabel',
            style: TextStyle(
              letterSpacing: 0.5,
              color: Colors.grey.shade700,
              fontSize: 12.0,
              fontFamily: 'DMSans-Light',
            ),
          ),
          const SizedBox(height: 10.0),
          TextField(
            decoration: InputDecoration(
              hintText: '$_fieldHint',
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
    );
  }
}
