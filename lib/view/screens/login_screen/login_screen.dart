import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro1/core/resources/color_manager.dart';
import 'package:pro1/view/component/core_component/elevated_button_component.dart';
import 'package:pro1/view/component/core_component/sized_box_component.dart';
import 'package:pro1/view/component/core_component/text_field_component.dart';
import 'package:pro1/view/screens/sign_up_screen/sign_up_screen.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../day_2/task2.dart';
import '../../../view_model/cubit/login_cubit/login_cubit.dart';
import '../home_screen/home_screen.dart';
class ScreenOne extends StatelessWidget{
   ScreenOne({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

   @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => LoginCubit(),
  child: BlocConsumer<LoginCubit, LoginState>(
  listener: (context, state) {
    if (state is LoginSuccessState){
      showTopSnackBar(
        context,
        CustomSnackBar.success(
          message:
          "Loged in successfully",
        ),
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));

    }
    else if(state is ErrorState){
      showTopSnackBar(
        context,
        CustomSnackBar.error(
          message:
          "email or password is not correct ",
        ),
      );
      }
    // TODO: implement listener
  },
  builder: (context, state) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    customSizedBox(height: 200),
                    Text("Orange ",style: TextStyle(color: Colors.orange,fontSize: 30)),
                    Text("Digital Center ",style: TextStyle(color: Colors.black,fontSize: 30))
                  ],
                ),
                customSizedBox( height: 50),
                Row(
                  children: const [
                    SizedBox(
                      width: 20,
                    ),
                    Text("Login",style: TextStyle(fontSize: 30),)
                  ],
                ),
                customSizedBox(height: 30),
                customTextField("E-mail",emailController),
                customSizedBox(height: 30),
                customTextField("Password",passwordController),
                customSizedBox(height: 10),
                const Text("Forgot Password?",style: TextStyle(color: Colors.orangeAccent,decoration: TextDecoration.underline),),
                customSizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Container(
                    width: double.infinity,
                    height: 40,
                    child: customElevatedButton(Colors.deepOrange, "login",Colors.white , context,(){


                          LoginCubit.get(context).login(email: emailController.text, password:passwordController.text);


                    } , (){},SecondRoute: HomeScreen() )
                  ),
                ),
                customSizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.black,
                      ),
                    ),
                    const Text("OR",style:  TextStyle(color: Colors.black,fontSize: 12),),

                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                customSizedBox(height: 10),
                Container(

                  width: double.infinity,
                  height: 40,
                  child: customElevatedButton(ColorManager.white, "Sign Up", ColorManager.primary , context,(){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>  SignUpScreen()));
                  },(){} ,SecondRoute: ScreenTwo() )
                )

              ],
            ),
          ),
        ),
      ),
    );
  },
),
);

  }
}
