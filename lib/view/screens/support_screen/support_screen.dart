import 'package:flutter/material.dart';
class ScreenFour extends StatelessWidget{
  const ScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.deepOrange),
        title: Text("Support",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold ),),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15) ),
                    hintText: 'Name',
                    prefixIcon: const Icon(Icons.person)
                ),


              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15) ),
                    hintText: 'E-mail',
                    prefixIcon: const Icon(Icons.email)
                ),

              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15) ),
                  hintText: 'What is making you unhappy? ',

                ),
                maxLines: 8,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 40,

                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: ElevatedButton(onPressed: () {  },
                  child: const Text("sign up",style: TextStyle(color: Colors.white),) ,
                  style:ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),side: const BorderSide(width: 2,color: Colors.deepOrange))
                  ),),
              )
            ],
          ),
        ),
      ),

    );
  }

}