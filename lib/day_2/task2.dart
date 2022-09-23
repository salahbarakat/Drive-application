import 'package:flutter/material.dart';
class ScreenTwo extends StatelessWidget{
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 100,
                ),
                Text("Orange ",style: TextStyle(color: Colors.orange,fontSize: 30)),
                Text("Digital Center ",style: TextStyle(color: Colors.black,fontSize: 30))
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Text("Sign Up",style: TextStyle(fontSize: 30),)
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10) ),
                  hintText: 'Name'
              ),

            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10) ),
                  hintText: 'E-mail'
              ),

            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10) ),
                  hintText: 'Password ',
                  suffixIcon: Icon(Icons.visibility_off_sharp,color: Colors.deepOrange,)
              ),

            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10) ),
                  hintText: 'Password ',
                  suffixIcon: Icon(Icons.visibility_off_sharp,color: Colors.deepOrange,)
              ),

            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10) ),
                  hintText: 'Phone Number'
              ),

            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Column(
                 children: [
                   Text("Gender"),
                   Container(

                     decoration: BoxDecoration(
                       color: Colors.white,
                       border: Border.all(color: Colors.deepOrange),borderRadius: BorderRadius.circular(10)
                     ),
                     child: Row(
                       children: const [
                         Text("Male"),
                         Icon(Icons.arrow_drop_down)
                       ],
                     ),
                   )
                 ],
               ),
               Column(
                 children: [
                   Text("University"),
                   Container(
                     decoration: BoxDecoration(
                         color: Colors.white,
                         border: Border.all(color: Colors.deepOrange),borderRadius: BorderRadius.circular(10)
                     ),
                     child: Row(
                       children: const [
                         Text("AUC"),
                         Icon(Icons.arrow_drop_down)
                       ],
                     ),
                   )
                 ],
               )
             ], 
            ),
            Center(
              child: Column(
                children: [
                  Text("Grade"),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 1, 1),
                    width: 70,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.deepOrange),borderRadius: BorderRadius.circular(10)
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Text("Grade"),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  )

                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(onPressed: () {  },
                child: Text("Sign up",style: TextStyle(color: Colors.white),) ,
                style:ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                ),),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.black,
                  ),
                ),
                const Text("OR",style:  TextStyle(color: Colors.black),),

                Expanded(
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(onPressed: () {  },
                child: const Text("Login",style: TextStyle(color: Colors.deepOrange),) ,
                style:ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: const BorderSide(width: 2,color: Colors.deepOrange))
                ),),
            )
          ],
        ),
      ),
    );

  }

}