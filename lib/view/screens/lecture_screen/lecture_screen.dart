import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro1/view_model/cubit/app_cubits/app_cubit.dart';
import 'package:pro1/view_model/cubit/app_cubits/app_state.dart';

import '../../../model/lecture_model/lecture_model.dart';
import '../../component/core_component/sized_box_component.dart';
class LectureScreen extends StatelessWidget {
  const LectureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white24,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
            icon: const Icon(Icons.arrow_back_ios,color: Colors.deepOrange,)),
        title: const Text("Lecture",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: const [
          Icon(Icons.filter_alt,color: Colors.deepOrange,)
        ],
      ),
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(itemBuilder: (context,index) => lictureCard(AppCubit.get(context).lectureModel!.data![index]),
            itemCount: AppCubit.get(context).lectureModel!.data!.length,
          ),
        ),
      ),
    );
  },
);
  }

  Card lictureCard(LectureData model) {
    return Card(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(model.lectureSubject!,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
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
                                Text(model.lectureDate!)
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
                                Text(model.lectureStartTime!)
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
                                Text(model.lectureEndTime!)
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
  }
}
