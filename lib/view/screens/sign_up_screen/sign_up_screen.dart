import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro1/view/component/core_component/sized_box_component.dart';
import 'package:pro1/view/component/core_component/text_field_component.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../view_model/cubit/sign_up_cubit/sign_up_cubit.dart';
import '../login_screen/login_screen.dart';
class SignUpScreen extends StatelessWidget{
  SignUpScreen({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => SignUpCubit(),
  child: BlocConsumer<SignUpCubit, SignUpState>(
  listener: (context, state) {
    if (state is SignUpSuccessState){
      showTopSnackBar(
        context,
        CustomSnackBar.success(
          message:
          "Signup  successfully",
        ),
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));

    }
    else if(state is SignUpErrorState){
      showTopSnackBar(
        context,
        CustomSnackBar.error(
          message:
          "email or password is not correct ",
        ),
      );
    }

  },
  builder: (context, state) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                customSizedBox(height: 100),
                Text("Orange ",style: TextStyle(color: Colors.orange,fontSize: 30)),
                Text("Digital Center ",style: TextStyle(color: Colors.black,fontSize: 30))
              ],
            ),
            customSizedBox(height: 50),
            Row(
              children:  [
                customSizedBox(width: 20),
                Text("Sign Up",style: TextStyle(fontSize: 30),)
              ],
            ),
            customSizedBox(height: 30),
            customTextField("Name",nameController),
            customSizedBox(height: 20),
            customTextField("E-mail",emailController),
            customSizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10) ),
                  hintText: 'Password ',
                  suffixIcon: Icon(Icons.visibility_off_sharp,color: Colors.deepOrange,)
              ),

            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordController,

              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10) ),
                  hintText: 'Password ',
                  suffixIcon: Icon(Icons.visibility_off_sharp,color: Colors.deepOrange,)
              ),

            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: phoneController,

              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10) ),
                  hintText: 'Phone Number'
              ),

            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Gender"),
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.deepOrange),borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: const [
                          Text("Male"),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("University"),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.deepOrange),borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: const [
                          Text("AUC"),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Center(
              child: Column(
                children: [
                  Text("Grade"),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 1, 1),
                    width: 70,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.deepOrange),borderRadius: BorderRadius.circular(10)
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Text("Grade"),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  )

                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(onPressed: () {
                print(0);
                SignUpCubit.get(context).signup(email: emailController.text,
                    password: passwordController.text,
                    name: nameController.text,
                    phone: phoneController.text);
              },
                child: Text("Sign",style: TextStyle(color: Colors.white),) ,
                style:ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                ),),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.black,
                  ),
                ),
                const Text("OR",style:  TextStyle(color: Colors.black),),

                Expanded(
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(onPressed: () {  },
                child: const Text("Login",style: TextStyle(color: Colors.deepOrange),) ,
                style:ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: const BorderSide(width: 2,color: Colors.deepOrange))
                ),),
            )
          ],
        ),
      ),
    );
  },
),
);

  }

}