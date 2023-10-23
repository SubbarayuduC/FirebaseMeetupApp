import 'package:flutter/material.dart';

void main(){
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: formKey,
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
                Padding(
                    padding: EdgeInsets.symmetric(
                    horizontal: 5,
                        vertical: 15
                    )
                ),
                Icon(Icons.calendar_today),
                Text('October 30'),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 15
                    )
                ),
                Icon(Icons.location_city),
                Text('San Francisco'),
              ],
            ),

            Align(alignment: Alignment.centerLeft,),

            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: OutlinedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white)
                ),
                onPressed: (){
                  if(formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                  }
                  Navigator.pushNamed(
                      context, '/SigninPage'
                  );
                }, child: Text('RSVP',
              style: TextStyle(
                  color: Colors.black),
            )
            ),),
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
