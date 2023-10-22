



import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('New password',style: TextStyle(fontSize: 20),),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.visibility,),
              ),

            ),
            Text('Re-enter password',style: TextStyle(fontSize: 20),),
            TextFormField(
              decoration: InputDecoration(
              icon: Icon(Icons.visibility)
            ),
            ),
          ],
        ),
      ),

    );
  }
}
