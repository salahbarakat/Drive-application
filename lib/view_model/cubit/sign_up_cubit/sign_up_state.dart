part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}
class SignUpSuccessState extends SignUpState {}
class SignUpErrorState extends SignUpState {}
class SignUpLoadingState extends SignUpState {}

