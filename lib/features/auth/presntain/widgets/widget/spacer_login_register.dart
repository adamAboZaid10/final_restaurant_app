import 'package:flutter/material.dart';

import '../../../../../core/constant.dart';
import '../../../../../core/utlis/styles.dart';

class SpacerLoginRegister extends StatelessWidget {
  const SpacerLoginRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Divider(
          thickness: 1,
          color: kRememberColor,
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.5),
          child: Text(
            'or',
            style: Styles.textStyle12.copyWith(color: kRememberColor),
          ),
        ),
        const Expanded(
            child: Divider(
          thickness: 1,
          color: kRememberColor,
        )),
      ],
    );
  }
}
