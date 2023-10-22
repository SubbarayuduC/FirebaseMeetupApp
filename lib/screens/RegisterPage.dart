
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(

          children: [
            Padding(padding: EdgeInsets.all(10.0)),

            Column(
                children: [
                  Align(alignment: Alignment.centerLeft),
                  Text('Register',style: TextStyle(fontSize: 25,),),
                  Row(
                    children: [
                      Text('Already have an account?'),
                      TextButton(
                          onPressed: (){

                          }, child: Text('Sign In',style: TextStyle(color: Colors.deepPurple),))
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email'
                    ),
                  ),

                  Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password'
                    ),
                  ),

                  Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Confirm password'
                    ),
                  ),
                  OutlinedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/ForgotPassword');
                      }, child: Text('Register',style: TextStyle(color: Colors.deepPurple),)
                  )
                ],


            )
          ],
        ),
      ),
    );
  }
}
