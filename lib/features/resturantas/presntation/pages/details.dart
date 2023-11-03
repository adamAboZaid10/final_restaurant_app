import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/colors.dart';
import '../../../../core/route.dart';
import '../bloc/cubit/counter_cubit.dart';
import '../widgets/bottomnavigationbar.dart';
import '../widgets/detailsorders.dart';
import 'home_screen.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> listwiget = const [
      HomeView(),
      Text("data"),
      DetailsOrders(),
      Text("data"),
      Text("data")
    ];
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                onTap: (index) {
                  BlocProvider.of<CounterCubit>(context).num = index;
                },
                selectedItemColor: orange,
                currentIndex: BlocProvider.of<CounterCubit>(context).num,
                type: BottomNavigationBarType.fixed,
                items: listbotto),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: orange,
              leading: const Icon(Icons.arrow_back_ios),
              centerTitle: true,
              title: const Text("Order Details"),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(cart);
                    },
                    icon: const Icon(Icons.add_alert))
              ],
            ),
            body: listwiget
                .elementAt(BlocProvider.of<CounterCubit>(context).num));
      },
    );
  }
}
