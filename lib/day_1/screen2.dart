
import 'package:flutter/material.dart';


class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.white24,
          leading: const Icon(Icons.arrow_back_ios,color: Colors.deepOrange,),
          title: const Text("Sections",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          actions: const [
            Icon(Icons.filter_alt,color: Colors.deepOrange,)
          ],
        ),

        body: Center(
          
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(

              children:  [
                Card(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Flutter",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                            Row(
                              children: [
                                Icon(Icons.timer,color: Colors.grey,),
                                Text("2hr")
                              ],
                            )

                          ],
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Section Day",style: TextStyle(color: Colors.grey),),
                                Row(
                                  children: [
                                    Icon(Icons.date_range,color: Colors.grey,),
                                    Text("Wednesday")
                                  ],
                                )
                              ],
                            ) ,
                            Column(
                              children: [
                                Text("Start time ",style: TextStyle(color: Colors.grey)),
                                Row(
                                  children: [
                                    Icon(Icons.timer,color: Colors.green,),
                                    Text("12:00pm")
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text("End Time ",style: TextStyle(color: Colors.grey)),
                                Row(
                                  children: [
                                    Icon(Icons.timer,color: Colors.pinkAccent,),
                                    Text("2:00pm")
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("React",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                            Row(
                              children: [
                                Icon(Icons.timer,color: Colors.grey,),
                                Text("2hr")
                              ],
                            )

                          ],
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Section Day",style: TextStyle(color: Colors.grey),),
                                Row(
                                  children: [
                                    Icon(Icons.date_range,color: Colors.grey),
                                    Text("Thursday")
                                  ],
                                )
                              ],
                            ) ,
                            Column(
                              children: [
                                Text("Start time ",style: TextStyle(color: Colors.grey)),
                                Row(
                                  children: [
                                    Icon(Icons.timer,color: Colors.green,),
                                    Text("12:00pm")
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text("End Time ",style: TextStyle(color: Colors.grey)),
                                Row(
                                  children: [
                                    Icon(Icons.timer,color: Colors.pinkAccent,),
                                    Text("2:00pm")
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Vue",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                            Row(
                              children: [
                                Icon(Icons.timer,color: Colors.grey,),
                                Text("2hr")
                              ],
                            )

                          ],
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Section Day",style: TextStyle(color: Colors.grey),),
                                Row(
                                  children: [
                                    Icon(Icons.date_range,color: Colors.grey),
                                    Text("Thursday")
                                  ],
                                )
                              ],
                            ) ,
                            Column(
                              children: [
                                Text("Start time ",style: TextStyle(color: Colors.grey)),
                                Row(
                                  children: [
                                    Icon(Icons.timer,color: Colors.green,),
                                    Text("2:00pm")
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text("End Time ",style: TextStyle(color: Colors.grey)),
                                Row(
                                  children: [
                                    Icon(Icons.timer,color: Colors.pinkAccent,),
                                    Text("4:00pm")
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )


              ],
            ),
          ),
        ),


    );
  }

}