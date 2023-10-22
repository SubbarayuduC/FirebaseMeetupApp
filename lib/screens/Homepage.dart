import 'package:flutter/material.dart';

void main(){
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          children: [
            Align(alignment: Alignment.topCenter,),

            Image.asset('images/firebasemeetup.png',
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
            Align(
              alignment: Alignment.centerLeft,
            ),

            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0)
            ),

            OutlinedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white)
                ),
                onPressed: (){
                  Navigator.pushNamed(
                      context, '/SigninPage'
                  );
                }, child: Text('RSVP',
              style: TextStyle(
                  color: Colors.black),
            )
            ),
            TextFormField(
              decoration: InputDecoration(),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 05)
            ),

            Text('What we\'ll be doing',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black
              ),
            ),
            Align(alignment: Alignment.centerLeft,),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 05)
            ),

            Text('Join us for a day full of Firebase Workshops\n and Pizza!',
              style: TextStyle(fontSize: 15),
            ),
          ],

        ),

      ),
    );
  }
}
