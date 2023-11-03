import 'package:flutter/material.dart';

import 'Custom_list_view_food_item.dart';

class CustomListViewFood extends StatelessWidget {
  const CustomListViewFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .10,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) => const CustomListViewFoodItem()),
    );
  }
}
