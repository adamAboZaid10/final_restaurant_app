import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
    required this.hint,
    this.suffix,
  });
  final String hint;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
      child: TextFormField(
        decoration: InputDecoration(
            disabledBorder:
                const OutlineInputBorder(borderSide: BorderSide(color: orange)),
            enabledBorder:
                const OutlineInputBorder(borderSide: BorderSide(color: orange)),
            focusedBorder:
                const OutlineInputBorder(borderSide: BorderSide(color: orange)),
            prefix: suffix,
            labelText: hint,
            labelStyle: const TextStyle(color: orange),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
    );
  }
}
