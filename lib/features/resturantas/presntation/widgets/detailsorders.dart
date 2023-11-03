import 'package:final_restaurant/features/resturantas/presntation/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors.dart';
import '../../../../core/route.dart';
import '../../../../core/string.dart';
import 'big_text.dart';
import 'columnicons.dart';
import 'columnone.dart';

class DetailsOrders extends StatelessWidget {
  const DetailsOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
        ),
        Container(
          color: orange,
          height: 250.h,
          width: double.infinity,
          child: Image.asset("$image/brger.png"),
        ),
        Positioned(
            top: 150.h,
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              width: 300.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  BigText(text: "Grilled Chicken Peri Peri"),
                  SizedBox(
                    height: 20.h,
                  ),
                  SmallText(
                      text:
                          "savor the satisfyin crunch of our juicy chicken patty,topped with sheredded lettuce and just righr amount of creamy mayinnaise all served on perfectly toaosted bun"),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ColumnOne(text1: "kcal", text2: "383"),
                      VerticalDivider(
                        color: orange,
                      ),
                      ColumnOne(text1: "fast", text2: "16"),
                      VerticalDivider(
                        color: orange,
                      ),
                      ColumnOne(text1: "proteins", text2: "13"),
                      VerticalDivider(
                        color: orange,
                      ),
                      ColumnOne(text1: "carbs", text2: "21"),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    child: const Text(
                      "ingredients",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ColumnIcons(
                        image: '$image/onion.png',
                        text: 'onion',
                      ),
                      ColumnIcons(
                        image: '$image/tomato.png',
                        text: 'tomato',
                      ),
                      ColumnIcons(
                        image: '$image/chicken.jpg',
                        text: 'chicken',
                      ),
                      ColumnIcons(
                        image: '$image/lettuce.png',
                        text: 'lettuce',
                      ),
                      ColumnIcons(
                        image: '$image/sos.png',
                        text: 'sauce',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(text: "\$12.99"),
                      const Icon(
                        Icons.luggage,
                        color: orange,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 120.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(ordered);
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: orange),
                      child: const Text("Order"),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
