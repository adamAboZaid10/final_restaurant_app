import 'package:final_restaurant/features/auth/presntain/widgets/widget/spacer_login_register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constant.dart';
import '../../../../../core/utlis/assets_data.dart';
import '../../../../../core/utlis/styles.dart';
import '../../../../resturantas/presntation/widgets/text_form_widget.dart';
import 'button_login_and_regester_widget.dart';
import 'custom_other_register_widget.dart';
import 'no_account_sign_now_or_register.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var dateOfBirthController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 44,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: SvgPicture.asset(AssetsData.kRegisterLogo),
            ),
            Text(
              'Name',
              style: Styles.textStyle16.copyWith(color: kTextEmAndPassColor),
            ),
            const SizedBox(
              height: 9,
            ),
            defaultFormField(
              controller: nameController,
              type: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'name must not be empty';
                }
                return null;
              },
              label: 'Adam Mohamed',
            ),
            const SizedBox(
              height: 22,
            ),
            Text(
              'Email Address',
              style: Styles.textStyle16.copyWith(color: kTextEmAndPassColor),
            ),
            const SizedBox(
              height: 9,
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
              label: 'Adam@gmail.com',
            ),
            const SizedBox(
              height: 22,
            ),
            Text(
              'Date of Birth',
              style: Styles.textStyle16.copyWith(color: kTextEmAndPassColor),
            ),
            const SizedBox(
              height: 9,
            ),
            defaultFormField(
              controller: dateOfBirthController,
              type: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'date must not be empty';
                }
                return null;
              },
              label: '',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22),
              child: ButtonLoginAndRegisterWidget(
                text: 'signup',
                onPressed: () {},
              ),
            ),
            NoAccountSignNowOrRegister(
                text: ' have an account? ',
                onPressed: () {},
                buttonText: 'login'),
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
      ),
    );
  }
}
