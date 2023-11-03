import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utlis/assets_data.dart';
import '../../../../../core/utlis/styles.dart';

class CustomListViewFoodItem extends StatelessWidget {
  const CustomListViewFoodItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(
              width: 24,
              height: 24,
              child: SvgPicture.asset(AssetsData.kPizzaLogo)),
          const SizedBox(
            height: 19,
          ),
          Text(
            'pizza',
            style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
