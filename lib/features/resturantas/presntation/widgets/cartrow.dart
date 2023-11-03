import 'package:final_restaurant/features/resturantas/presntation/widgets/small_text.dart';
import 'package:final_restaurant/features/resturantas/presntation/widgets/textcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'big_text.dart';

class CartRow extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const CartRow({
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100.h,
                width: 100.w,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextColor(text: text1),
                    SizedBox(
                      height: 10.h,
                    ),
                    SmallText(text: text2),
                    Row(
                      children: [
                        BigText(text: text3),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.minimize)),
                            BigText(text: text4)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
