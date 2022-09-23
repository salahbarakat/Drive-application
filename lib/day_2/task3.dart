import 'package:flutter/material.dart';
class ScreenThree extends StatelessWidget{
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                height: 100,
              ),
              Text("News ",style: TextStyle(color: Colors.black,fontSize: 30)),

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                      child: Text("ODCs",style: TextStyle(color: Colors.white),)
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      padding: EdgeInsetsDirectional.all(7),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(15)
                          
                      ),
                      child: Row(
                        children: [

                          Icon(Icons.share_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text("|"),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.copy),

                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: 50,
                    left: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 100,
                        ),
                        Text("Orange ",style: TextStyle(color: Colors.orange,fontSize: 30)),
                        Text("Digital Center ",style: TextStyle(color: Colors.black,fontSize: 30))
                      ],
                    ),
                  ),


                  Positioned(
                    top: 150,
                    left: 150,
                      child: Text("ODC Supports All Universties")
                  ),
                     ],
                   )



              ),
            ),

        ],
      ),
    );
  }

}