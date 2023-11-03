import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/string.dart';
import '../widgets/cartrow.dart';
import '../widgets/subtitle.dart';
import '../widgets/textfor.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: orange,
            )),
        centerTitle: true,
        title: const Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.luggage,
                color: orange,
              ))
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CartRow(
              image: '$image/potato.png',
              text1: 'Potatoes With Mozirlla',
              text2: 'size : 7.60 fl oz/225ml',
              text3: '\$19.98',
              text4: '01',
            ),
            CartRow(
              image: '$image/brger.png',
              text1: 'Burger',
              text2: 'size : 7.60 fl oz/225ml',
              text3: '\$19.98',
              text4: '02',
            ),
            CartRow(
              image: '$image/potato.png',
              text1: 'Potatoes With Mozirlla',
              text2: 'size : 7.60 fl oz/225ml',
              text3: '\$19.98',
              text4: '02',
            ),
            TextForm(
              hint: "promo code",
            ),
            Subtotle(
              text1: 'Subtotal',
              text2: '\$45.99',
              text3: 'USD',
            ),
            Subtotle(
              text1: 'Shipping',
              text2: '\$45.99',
              text3: 'USD',
            ),
            Subtotle(
              text1: 'Chart total',
              text2: '\$45.99',
              text3: 'USD',
            ),
          ],
        ),
      ),
    );
  }
}
