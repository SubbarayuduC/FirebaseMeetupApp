import 'package:flutter/material.dart';

import 'package:signin_page/screens/Homepage.dart';
void main(){
  runApp(const LogOutScreen());
}

class LogOutScreen extends StatelessWidget {
  const LogOutScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('Firebase Mettup')),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Image.asset('images/firebasemeetup.png',
              // width: double.infinity,
              fit: BoxFit.fill,
              height: 250,
              width: double.infinity,

            ),

            Row(

              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 15)),
                Icon(Icons.calendar_today),
                Text('October 30'),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 15)),
                Icon(Icons.location_city),
                Text('San Francisco'),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 15)),
            OutlinedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white)
                ),
                onPressed: (){
                  Navigator.of(context).popUntil((route) => route.isFirst);
                }, child: Text('LOGOUT',style: TextStyle(color: Colors.black),)),

            TextFormField(
              decoration: InputDecoration(),
            ),

            Text('What we\'ll be doing',style: TextStyle(fontSize: 30,color: Colors.black),),

            Text('Join us for a day full of Firebase Workshops\n and Pizza!',style: TextStyle(fontSize: 15),),
          ],

        ),

      ),
    );
  }
}