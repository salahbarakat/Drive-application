import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../core/resources/color_manager.dart';
import '../../../day_2/task3.dart';
import '../../component/setting_component/divider_component.dart';
import '../../component/setting_component/list_tile_component.dart';
import '../home_screen/home_screen.dart';
import '../login_screen/login_screen.dart';
class ScreenDayOne extends StatelessWidget{
  const ScreenDayOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.white,
        elevation: 0,
        title: const Text("Setting",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(

        children:  [
          buildListTile("FAQ"),
          buildDivider(Colors.black),
          buildListTile("Our Partners"),
          buildDivider(Colors.black),

          buildListTile("Support"),
          buildDivider(Colors.black),
          buildListTile("Terms & Conditions "),
          buildDivider(Colors.black),
          InkWell(
            onTap:(){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ScreenOne()), (route) => false);},
              child: buildListTile("Logout")),


        ],
      ),


    );
  }




}


