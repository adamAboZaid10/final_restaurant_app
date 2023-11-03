import 'package:flutter/material.dart';

class ColumnOne extends StatelessWidget {
  final String text1;
  final String text2;
  const ColumnOne({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(fontWeight: FontWeight.w300),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text2,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        )
      ],
    );
  }
}
