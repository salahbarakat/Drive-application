import 'package:flutter/material.dart';
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

        children: const [
          ListTile(
            title:Text("FAQ"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 30,

          ),
          ListTile(
            title: Text("Our Partners"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 30,

          ),

          ListTile(
            title: Text("Support"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            indent: 20,
            endIndent: 30,
            color: Colors.black,

          ),
          ListTile(
            title: Text("Terms & Conditions"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 30,

          ),
          ListTile(
            title: Text("logout"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),


        ],
      ),
    );
  }
  }


