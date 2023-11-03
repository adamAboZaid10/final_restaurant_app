import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController? controller,
  required TextInputType type,
  ValueChanged<String>? onSubmit,
  ValueChanged<String>? onChange,
  GestureTapCallback? onTap,
  required FormFieldValidator<String>? validator,
  required String label,
  IconData? prefixIcon,
  IconData? suffix,
  Function? suffixPressed,
  bool obscure = false,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: (String? s) {
        onSubmit!(s!);
      },
      onTap: onTap,
      onChanged: (String? s) {
        onChange!(s!);
      },
      validator: validator,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: label,
        contentPadding: EdgeInsets.zero,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  suffixPressed!();
                },
                icon: Icon(suffix),
              )
            : null,
      ),
    );
