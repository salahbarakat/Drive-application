
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:pro1/view_model/database/network/dio_helper.dart';
import 'package:pro1/view_model/database/network/end_points.dart';

import '../../../model/login_model/login_model.dart';
import '../../../view/screens/home_screen/home_screen.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginModel? loginModel;
  void login({
  required String email , required String password
}){
    DioHelper.postData(url: lectureEndPoint, data: {'email' : email, 'password' : password}
    ).then((value) {loginModel = LoginModel.fromJson(value.data);

      emit(LoginSuccessState());
    })
        .catchError((e) {
          emit(ErrorState());
          print(e.toString());
    });
  }

}
