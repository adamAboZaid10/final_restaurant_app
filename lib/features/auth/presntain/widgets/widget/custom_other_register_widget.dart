import 'package:flutter/material.dart';

import '../../../../../core/utlis/assets_data.dart';
import 'custom_other_register_body.dart';

class CustomOtherRegistersWidget extends StatelessWidget {
  const CustomOtherRegistersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomOtherRegisterBody(
          text: 'Login with Google',
          svgPicture: AssetsData.kGoogleLogo,
        ),
        CustomOtherRegisterBody(
          text: 'Login with Microsoft',
          svgPicture: AssetsData.kMicrosoftLogo,
        ),
      ],
    );
  }
}
