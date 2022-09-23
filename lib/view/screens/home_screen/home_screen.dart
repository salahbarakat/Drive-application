import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro1/core/resources/color_manager.dart';
import 'package:pro1/view/screens/finals_screen/finals_screen.dart';
import 'package:pro1/view/screens/midterms_screen/midterms_screen.dart';
import 'package:pro1/view/screens/notes_screen/notes_screen.dart';
import 'package:pro1/view/screens/sections_screen/sections_screen.dart';
import '../../../day_1/screen1.dart';
import '../../../day_1/screen2.dart';
import '../../../day_2/task3.dart';
import '../../component/core_component/sized_box_component.dart';
import '../../component/home_component/cardcomponent.dart';
import '../events_screen/events_screen.dart';
import '../lecture_screen/lecture_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customSizedBox(height: 100),
                Text("Orange ",
                    style: TextStyle(color: Colors.orange, fontSize: 30)),
                Text("Digital Center ",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LectureScreen() ),);
                  },
                  child: customCard(
                       ColorManager.primary, "assets/icons/lecture.svg","Lectures"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SectionScreen() ),);
                  },
                  child: customCard(
                       ColorManager.primary, "assets/icons/sections.svg", "Sections"),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [

               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => MidtermsScreen()));

                 },
                   child: customCard( ColorManager.primary, "assets/icons/midterm.svg", "Midterms ")),
               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => FinalsScreen()));

                 },
                   child: customCard( ColorManager.primary, "assets/icons/final.svg","Finals"))
             ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EventScreen()));

                    },
                      child: customCard( ColorManager.primary, "assets/icons/event.svg","Events")),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NotesScreen()));

                    },
                      child: customCard( ColorManager.primary, "assets/icons/notes.svg","Notes"))
                ],
            ),





          ],

        ),
      ),

     bottomNavigationBar: Card(
       elevation: 5,

       child: GNav(

        rippleColor: ColorManager.primary, // tab button ripple color when pressed
        hoverColor: ColorManager.primary, // tab button hover color
        haptic: true, // haptic feedback
        tabBorderRadius: 15,
        tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
        //tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
        //tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
        curve: Curves.easeOutExpo, // tab animation curves
        duration: Duration(milliseconds: 100), // tab animation duration
        gap: 8, // the tab button gap between icon and text
        color: Colors.grey[800], // unselected icon color
        activeColor: ColorManager.primary, // selected icon and text color
        iconSize: 24, // tab button icon size
        tabBackgroundColor: Colors.grey.shade200, // selected tab background color
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // navigation bar padding
        tabs: [
        GButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) =>  HomeScreen()));

          },
        icon:Icons.home_filled,
        text: 'Home',
        ),
        GButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) =>  ScreenThree()));

          },
        icon: Icons.newspaper,
        text: 'News',
        ),
        GButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) =>  ScreenDayOne()));
          },
        icon: Icons.settings,
        text: 'Settings',
        )

        ]
        ),
     )
    );

  }
}

