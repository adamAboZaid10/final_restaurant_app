import 'package:flutter/cupertino.dart';

import '../../../../core/colors.dart';

// ignore: must_be_immutable
class TextColor extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  TextColor({
    Key? key,
    this.color = orange,
    required this.text,
    this.size = 15,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontSize: size,
        height: height,
      ),
    );
  }
}
