import 'package:flutter/material.dart';
Widget customTextField(String text,TextEditingController controller){
  return TextFormField(
    controller:controller ,
    decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10) ),
        hintText: text,

    ),

  );
}