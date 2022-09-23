import 'package:flutter/material.dart';
class ScreenDayOne extends StatelessWidget{
  const ScreenDayOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                Text("Login",style: TextStyle(fontSize: 30),)
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5) ),
                  hintText: 'E-mail'
              ),

            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5) ),
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off_sharp,color: Colors.deepOrange,)
              ),

            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text("Forgot Password?",style: TextStyle(color: Colors.orangeAccent,decoration: TextDecoration.underline),),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(onPressed: () {  },
              child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),) ,
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
                const Text("OR",style:  TextStyle(color: Colors.black,fontSize: 12),),

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
                child: const Text("sign up",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),) ,
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
