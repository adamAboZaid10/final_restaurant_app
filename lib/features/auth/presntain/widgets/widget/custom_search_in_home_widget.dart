import 'package:flutter/material.dart';

import '../../../../resturantas/presntation/widgets/text_form_widget.dart';

class CustomSearchInHomeViewWidget extends StatelessWidget {
  const CustomSearchInHomeViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return defaultFormField(
        prefixIcon: Icons.search,
        controller: searchController,
        type: TextInputType.text,
        validator: (value) {
          if (value!.isEmpty) {
            return 'what would you like';
          }
          return null;
        },
        label: 'Find for food or restaurant... ');
  }
}
