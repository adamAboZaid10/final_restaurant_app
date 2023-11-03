import 'package:flutter/material.dart';

import 'custom_item_gridview.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1 / 1.5,
        children: List.generate(20, (index) => const CustomItemGridView()),
      ),
    );
  }
}
