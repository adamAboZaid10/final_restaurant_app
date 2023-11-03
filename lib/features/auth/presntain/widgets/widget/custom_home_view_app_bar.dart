import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constant.dart';
import '../../../../../core/utlis/assets_data.dart';
import '../../../../../core/utlis/styles.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: 46,
            height: 46,
            child: SvgPicture.asset(AssetsData.kAppBarLogo)),
        Expanded(
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'Deliver to',
                    style: Styles.textStyle16,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined),
                ],
              ),
              Text(
                '4102  Pretty View Lane ',
                style: Styles.textStyle16.copyWith(
                    color: kButtonYelloColor, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * .2,
            height: MediaQuery.of(context).size.height * .1,
            child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(AssetsData.kPhotoAppBarLogo))),
      ],
    );
  }
}
