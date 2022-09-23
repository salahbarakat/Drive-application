
import 'package:flutter/material.dart';
import 'package:pro1/core/resources/color_manager.dart';
Widget customElevatedButton(Color colorButton , String text , Color colorText , context ,Function functionLog, Function () function,{required Widget SecondRoute} ){
  return ElevatedButton(onPressed: () {
    function();
    functionLog();

    },
    child: Text(text,style: TextStyle(color: colorText,fontWeight: FontWeight.bold),) ,
    style:ElevatedButton.styleFrom(

    shape: RoundedRectangleBorder(
      side: BorderSide(color: ColorManager.primary),
    borderRadius: BorderRadius.circular(25),

    ),
      primary: colorButton,
    ));
}
