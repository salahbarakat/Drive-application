import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:pro1/view_model/database/network/end_points.dart';

import '../../database/network/dio_helper.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  static SignUpCubit get(context) => BlocProvider.of(context);



  void signup({
    required String email ,
    required String password,
    required String name,
    required String phone,

  }){

    emit(SignUpLoadingState());
    print('lllllllllllllllllllll');

    DioHelper.postData(url: registerEndPoint,
        data: {
      'email' : email,
          'password' : password,
          'name' : name,
          'phoneNumber' : phone,
          'gradeId' : 4,
          'universityId' : 2,
          'roleId' : 2,
          'gender' : 'm',
        }
    ).then((value) {

      print('hhhhhhhhhhhhhhhhhhh');
    emit(SignUpSuccessState());
    })
        .catchError((e) {
      print('eeeeeeeeeeeeeeeee');

      emit(SignUpErrorState());
      print(e.toString());
    });
  }
}
