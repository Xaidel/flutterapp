import 'package:flutter/material.dart';

class CBox extends StatefulWidget {
  const CBox({super.key});
  @override
  State<CBox> createState() => _CBoxState();
}

class _CBoxState extends State<CBox> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor() {
      if (isChecked != null && isChecked == true) {
        return const Color(0xffF55D5C);
      }
      return Colors.transparent;
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(
                fillColor:
                    MaterialStateProperty.resolveWith((states) => getColor()),
                side: const BorderSide(
                  color: Color(0xffF55D5C),
                ),
                checkColor: Colors.white,
                value: isChecked,
                onChanged: (bool? value) => setState(() {
                  isChecked = value;
                }),
              ),
              Text(
                "Agree to Terms and Conditions",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontFamily: "DMSans-Light",
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
