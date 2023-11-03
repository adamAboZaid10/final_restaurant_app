import 'package:flutter/material.dart';

import '../../../../../core/utlis/styles.dart';

class NoAccountSignNowOrRegister extends StatelessWidget {
  NoAccountSignNowOrRegister(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.buttonText})
      : super(key: key);
  String text;
  String buttonText;
  GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w500),
          ),
          TextButton(
              onPressed: onPressed,
              child: Text(
                buttonText,
                style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w500),
              )),
        ],
      ),
    );
  }
}
