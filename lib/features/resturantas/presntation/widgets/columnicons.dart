import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors.dart';

class ColumnIcons extends StatelessWidget {
  final String image;
  final String text;
  const ColumnIcons({
    required this.image,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            border: Border.all(color: orange),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
