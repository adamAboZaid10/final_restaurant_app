import 'package:flutter/material.dart';

import '../../../../../core/constant.dart';

class ButtonLoginAndRegisterWidget extends StatelessWidget {
  ButtonLoginAndRegisterWidget(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);
  String text;
  GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kButtonYelloColor),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.5),
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ));
  }
}
