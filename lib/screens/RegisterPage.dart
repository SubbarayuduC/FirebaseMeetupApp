
import 'package:flutter/material.dart';



class Register extends StatelessWidget {
   Register({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          key: formKey,
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
                          Navigator.pushNamed(context, '/SigninPage');
                          }, child: Text('Sign In',style: TextStyle(color: Colors.deepPurple),))
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
                  TextFormField(
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please Enter Email';
                      };
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Email'
                    ),
                  ),

                  Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
                  TextFormField(
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please Enter Password';
                      };
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Password'
                    ),
                  ),

                  Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),

                  TextFormField(
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please Re=Enter Password';
                      };
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Confirm password'
                    ),
                  ),
                  OutlinedButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                        }
                      }, child: Text('Register',
                    style: TextStyle(color: Colors.deepPurple),
                  )
                  )
                ],


            )
          ],
        ),
      ),
    );
  }
}
