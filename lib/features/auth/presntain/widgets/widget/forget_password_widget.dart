import 'package:flutter/material.dart';

import '../../../../../core/constant.dart';
import '../../../../../core/utlis/styles.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check_box_outline_blank,
          size: 13,
          color: kRememberColor,
        ),
        Text(
          'Remember Me',
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w500,
            color: kRememberColor,
          ),
        ),
        const Spacer(),
        TextButton(onPressed: () {}, child: const Text('Forget password?')),
      ],
    );
  }
}
