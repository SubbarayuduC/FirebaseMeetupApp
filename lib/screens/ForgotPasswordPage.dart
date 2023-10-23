



import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
   ForgotPassword({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: formKey,
      home: Scaffold(
        body: Column(
          children: [
            Text('New password',
              style: TextStyle(fontSize: 20),
            ),
            TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please New Password';
                };
                return null;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.visibility,),
              ),

            ),
            Text('Re-enter password',
              style: TextStyle(fontSize: 20),),
            TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please Re=Enter Password';
                };
                return null;
              },
              decoration: InputDecoration(
              icon: Icon(Icons.visibility)
            ),
            ),
            ElevatedButton(
                onPressed: (){
                  if(formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                  }
            }, child: Text('Change Password'))
          ],
        ),
      ),

    );
  }
}
