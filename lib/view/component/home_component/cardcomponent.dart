import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/resources/color_manager.dart';
import '../core_component/sized_box_component.dart';
SizedBox customCard( Color color , String path,String text) {
  return SizedBox(
    height: 150,
    width: 180,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,


      child: Column(
        children: [
          Container(
            height: 100,
            width: 120,
            padding:EdgeInsets.only(top: 30),
            child: SvgPicture.asset(
              path,
              height:100,
              width: 200,
              color: color,

            ),
          ),
          customSizedBox(height: 10),
          Text(text,style: TextStyle(color: ColorManager.primary,fontSize: 20,fontWeight: FontWeight.bold),)

        ],
      ),
    ),
  );
}