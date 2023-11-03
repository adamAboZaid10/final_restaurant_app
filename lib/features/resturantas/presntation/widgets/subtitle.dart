import 'package:final_restaurant/features/resturantas/presntation/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'big_text.dart';

class Subtotle extends StatelessWidget {
  final String text1;
  final String text2;

  final String text3;

  const Subtotle({
    required this.text1,
    required this.text2,
    required this.text3,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BigText(text: text1),
          Row(
            children: [
              BigText(text: text2),
              SizedBox(
                width: 10.w,
              ),
              SmallText(text: text3)
            ],
          )
        ],
      ),
    );
  }
}
