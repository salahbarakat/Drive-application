import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro1/day_1/screen1.dart';
import 'package:pro1/day_1/screen2.dart';
import 'package:pro1/day_2/task1.dart';
import 'package:pro1/day_2/task2.dart';
import 'package:pro1/day_2/task3.dart';
import 'package:pro1/day_2/task4.dart';
import 'package:pro1/view/screens/home_screen/home_screen.dart';
import 'package:pro1/view/screens/login_screen/login_screen.dart';
import 'package:pro1/view/screens/splash_screen/splash_screen.dart';
import 'package:pro1/view_model/counter_cubit.dart';
import 'package:pro1/view_model/counter_state.dart';
import 'package:pro1/view_model/cubit/app_cubits/app_cubit.dart';
import 'package:pro1/view_model/cubit/app_cubits/app_state.dart';
import 'package:pro1/view_model/cubit/bloc_observer/bloc_observer.dart';
import 'package:pro1/view_model/cubit/login_cubit/login_cubit.dart';
import 'package:pro1/view_model/cubit/sign_up_cubit/sign_up_cubit.dart';
import 'package:pro1/view_model/database/network/dio_helper.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get create => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      AppCubit()
        ..getLecture()..getSections()..getExams(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          );
        },
      ),
    );
  }
}

