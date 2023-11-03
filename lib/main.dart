import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/route.dart';
import 'features/auth/presntain/pages/splash_screen.dart';
import 'features/resturantas/presntation/bloc/cubit/counter_cubit.dart';
import 'features/resturantas/presntation/pages/cart.dart';
import 'features/resturantas/presntation/pages/details.dart';
import 'features/resturantas/presntation/pages/home_screen.dart';
import 'features/resturantas/presntation/pages/order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return BlocProvider(
            create: (context) => CounterCubit(),
            child: MaterialApp(
              initialRoute: splash,
              routes: {
                detais: (context) => const Details(),
                cart: (context) => const Cart(),
                ordered: (context) => const Order(),
                splash: (context) => const SplashView(),
                home: (context) => const HomeView()
              },
              debugShowCheckedModeBanner: false,
            ),
          );
        });
  }
}
