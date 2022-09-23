import 'package:flutter/material.dart';
import 'package:pro1/view/component/core_component/text_field_component.dart';
class AddNote extends StatelessWidget {
   AddNote({Key? key}) : super(key: key);
  var titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white24,
        leading: const Icon(Icons.arrow_back_ios,color: Colors.deepOrange,),
        title: const Text("Add Note",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          customTextField("Enter Title", titleController),



        ],
      ),
    );
  }
}
