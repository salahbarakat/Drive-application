import 'package:flutter/material.dart';
import 'package:pro1/view/screens/add_notes_screen/add_notes_screen.dart';
class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white24,
        leading: const Icon(Icons.arrow_back_ios,color: Colors.deepOrange,),
        title: const Text("Notes",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("There\'s No Data To Show")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) =>  AddNote()));
        },
      ),
    );
  }
}