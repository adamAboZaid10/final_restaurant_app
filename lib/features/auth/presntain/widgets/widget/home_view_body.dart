import 'package:flutter/material.dart';

import '../../../../../core/constant.dart';
import 'custom_home_view_app_bar.dart';
import 'custom_list_view.dart';
import 'custom_listview.dart';
import 'custom_search_in_home_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CustomHomeViewAppBar(),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  '''What would you like
to order''',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
                const SizedBox(
                  height: 34,
                ),
                const CustomSearchInHomeViewWidget(),
                const SizedBox(
                  height: 24,
                ),
                const CustomListViewFood(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 23.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Featured Meals',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'View All',
                            style: TextStyle(
                                color: kButtonYelloColor, fontSize: 13),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomGridView(),
          ),
        )
      ],
    );
  }
}
