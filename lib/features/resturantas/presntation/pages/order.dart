import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors.dart';
import '../../../../core/string.dart';
import '../widgets/big_text.dart';
import '../widgets/small_text.dart';
import '../widgets/textcolor.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: orange,
            )),
        backgroundColor: Colors.white10,
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Image.asset("$image/1.png"),
            BigText(text: "Order successfully placed"),
            Padding(
              padding: const EdgeInsets.all(30),
              child: SmallText(
                  text:
                      "your order #33-A45E has been siccessfully processed and wil soon be deliveres to you"),
            ),
            SizedBox(
              height: 50.h,
              width: 250.w,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: orange),
                child: const Text("Track Delivery"),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            TextColor(text: "Continue Shopping")
          ],
        ),
      ),
    );
  }
}
