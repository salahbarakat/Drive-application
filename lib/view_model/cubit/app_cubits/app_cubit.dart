
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro1/model/lecture_model/lecture_model.dart';
import 'package:pro1/view_model/cubit/login_cubit/login_cubit.dart';
import 'package:pro1/view_model/database/network/dio_helper.dart';
import 'package:pro1/view_model/database/network/end_points.dart';

import '../../../model/exams_model/exams_model.dart';
import '../../../model/sections_model/sections_model.dart';
import 'app_state.dart';


class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  void getLecture(){
    emit(AppGetLecturesLoadingState());
    DioHelper.getData(url: lectureEndPoint,token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDIxLCJyb2xlIjo0LCJpYXQiOjE2NjM4NzQ0ODIsImV4cCI6MTc1MDI3NDQ4Mn0.fHYWcogAPy8B_-HnwfaELh1UobrCeAe70_TRUxBxVYo",
      
    ).then((value) {
      lectureModel = LectureModel.fromJson(value.data);
      emit(AppGetLecturesSuccessState());
    }).catchError((Error){
      print(Error.toString());
      emit(AppGetLecturesErrorState());

    });
  }
  LectureModel? lectureModel ;



  void getSections(){
    emit(AppGetSectionsLoadingState());
    DioHelper.getData(url: sectionEndPoint,token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDIxLCJyb2xlIjo0LCJpYXQiOjE2NjM4NzQ0ODIsImV4cCI6MTc1MDI3NDQ4Mn0.fHYWcogAPy8B_-HnwfaELh1UobrCeAe70_TRUxBxVYo",

    ).then((value) {
      sectionsModel = SectionModel.fromJson(value.data);
      emit(AppGetSectionsSuccessState());
    }).catchError((Error){
      print(Error.toString());
      emit(AppGetSectionsErrorState());

    });
  }
  SectionModel? sectionsModel ;


  void getExams(){
    emit(AppGetExamsLoadingState());
    DioHelper.getData(url: examsEndPoint,token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDIxLCJyb2xlIjo0LCJpYXQiOjE2NjM4NzQ0ODIsImV4cCI6MTc1MDI3NDQ4Mn0.fHYWcogAPy8B_-HnwfaELh1UobrCeAe70_TRUxBxVYo",

    ).then((value) {
      examsModel = ExamsModel.fromJson(value.data);
      emit(AppGetExamsSuccessState());
    }).catchError((Error){
      print(Error.toString());
      emit(AppGetExamsErrorState());

    });
  }
  ExamsModel? examsModel ;

}
