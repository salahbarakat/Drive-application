import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro1/model/sections_model/sections_model.dart';
import 'package:pro1/view/component/core_component/sized_box_component.dart';
import 'package:pro1/view_model/cubit/app_cubits/app_cubit.dart';

import '../../../view_model/cubit/app_cubits/app_state.dart';


class SectionScreen extends StatelessWidget {
  const SectionScreen({Key? key}) : super(key: key);

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
              icon: const Icon(
                Icons.arrow_back_ios, color: Colors.deepOrange,), onPressed: () {
                Navigator.pop(context);
            },
            ),
            title: const Text(
              "Sections", style: TextStyle(color: Colors.black),),
            centerTitle: true,
            actions: const [
              Icon(Icons.filter_alt, color: Colors.deepOrange,)
            ],
          ),

          body: Center(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: AppCubit.get(context).sectionsModel!.data!.length,
                  itemBuilder: (context, index) => sectionCard(AppCubit.get(context).sectionsModel!.data![index])),
            ),
          ),


        );
      },
    );
  }

  Widget sectionCard(SectionsData model) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(model.sectionSubject!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                Row(
                  children: [
                    Icon(Icons.timer, color: Colors.grey,),
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
                    Text("Section Day", style: TextStyle(color: Colors.grey),),
                    Row(
                      children: [
                        Icon(Icons.date_range, color: Colors.grey,),
                        Text(model.sectionDate!)
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("Start time ", style: TextStyle(color: Colors.grey)),
                    Row(
                      children: [
                        Icon(Icons.timer, color: Colors.green,),
                        Text(model.sectionStartTime!)
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("End Time ", style: TextStyle(color: Colors.grey)),
                    Row(
                      children: [
                        Icon(Icons.timer, color: Colors.pinkAccent,),
                        Text(model.sectionEndTime!)
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