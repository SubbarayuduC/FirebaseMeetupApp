import 'package:flutter/material.dart';

void main() {
  runApp(SigninPage());
}

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(10.0)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(alignment: Alignment.centerLeft,),
                Padding(padding: EdgeInsets.all(10.0)),
                Text('Sign in',style: TextStyle(fontSize: 25,),),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
            Row(
              children: [
                Align(alignment: Alignment.centerLeft,),
                Padding(padding: EdgeInsets.all(10.0)),
                Text('Don\'t have account?'),TextButton(onPressed: (){

                }, child: Text('Register',style: TextStyle(color: Colors.deepPurple),)),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            Column(
              children: [
                Padding(padding: EdgeInsets.all(10.0)),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),

                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(alignment: Alignment.centerRight,),
                Padding(padding: EdgeInsets.all(10.0)),
                TextButton(onPressed:(){

                }, child: Text('Forgot password?',style: TextStyle(color: Colors.deepPurple),)),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
            OutlinedButton(
              // style: ElevatedButton.styleFrom(primary: Colors.white,minimumSize: Size(100, 30)),
                onPressed: (){},
                child: Text('Sign in',style: TextStyle(color: Colors.deepPurple),)
            ),
          ],
        ),
      ),
    );
  }
}

