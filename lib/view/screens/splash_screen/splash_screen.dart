import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pro1/core/resources/color_manager.dart';
import 'package:pro1/day_2/task1.dart';
import 'package:pro1/view/screens/home_screen/home_screen.dart';
import '../../component/core_component/sized_box_component.dart';
import '../login_screen/login_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                customSizedBox(height: 100),
                Text("Orange ",style: TextStyle(color: Colors.orange,fontSize: 30)),
                Text("Digital Center ",style: TextStyle(color: Colors.black,fontSize: 30))
              ],
            ),
            customSizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Center(
                child: LinearPercentIndicator(
                  width: 350,
                  lineHeight: 14.0,
                  percent: 1,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  barRadius: Radius.circular(50),
                  backgroundColor: Colors.grey,
                  progressColor: Colors.deepOrange,
                  animation: true,
                  onAnimationEnd: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  ScreenOne()),
                    );
                  },
                  animationDuration: 2000,

                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

