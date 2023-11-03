import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constant.dart';
import '../../../../../core/utlis/styles.dart';

class CustomOtherRegisterBody extends StatelessWidget {
  CustomOtherRegisterBody(
      {Key? key, required this.svgPicture, required this.text})
      : super(key: key);

  String svgPicture;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: kBorderColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Row(
          children: [
            SvgPicture.asset(svgPicture),
            const SizedBox(
              width: 4,
            ),
            Text(
              text,
              style: Styles.textStyle12.copyWith(color: kRememberColor),
            ),
          ],
        ),
      ),
    );
  }
}
