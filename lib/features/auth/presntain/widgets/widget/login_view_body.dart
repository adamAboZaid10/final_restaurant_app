import 'package:final_restaurant/features/auth/presntain/widgets/widget/spacer_login_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constant.dart';
import '../../../../../core/route.dart';
import '../../../../../core/utlis/assets_data.dart';
import '../../../../../core/utlis/styles.dart';
import '../../../../resturantas/presntation/widgets/text_form_widget.dart';
import '../../pages/register_screen.dart';
import 'button_login_and_regester_widget.dart';
import 'custom_other_register_widget.dart';
import 'forget_password_widget.dart';
import 'no_account_sign_now_or_register.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({Key? key}) : super(key: key);
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 67,
          ),
          SvgPicture.asset(AssetsData.kLoginLogo),
          const SizedBox(
            height: 42,
          ),
          Text(
            'Email',
            style: Styles.textStyle12.copyWith(color: emailColor),
          ),
          const SizedBox(
            height: 6,
          ),
          defaultFormField(
            controller: emailController,
            type: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return 'email must not be empty';
              }
              return null;
            },
            label: 'abdo@gmail.com',
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Password',
            style: Styles.textStyle12.copyWith(color: emailColor),
          ),
          const SizedBox(
            height: 6,
          ),
          defaultFormField(
            controller: emailController,
            type: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return 'email must not be empty';
              }
              return null;
            },
            label: '',
          ),
          const ForgetPasswordWidget(),
          const SizedBox(
            height: 42,
          ),
          ButtonLoginAndRegisterWidget(
            text: 'Login',
            onPressed: () {
              Navigator.of(context).pushNamed(detais);
            },
          ),
          NoAccountSignNowOrRegister(
            text: 'Don\'t have an account?',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterView()));
            },
            buttonText: 'Sign up',
          ),
          const SpacerLoginRegister(),
          const SizedBox(
            height: 13,
          ),
          const CustomOtherRegistersWidget(),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
