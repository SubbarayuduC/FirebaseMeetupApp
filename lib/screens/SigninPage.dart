import 'package:flutter/material.dart';

void main() {
  runApp(SigninPage());
}

class SigninPage extends StatelessWidget {
   SigninPage({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: formKey,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(10.0)),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Align(
              alignment: Alignment.centerLeft,
            ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Sign in',
                    style: TextStyle(fontSize: 25,),
                  ),
                ),

              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Don\'t have account?'),
                  ),

                  TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/Register');
                  }, child: Text('Register',
                    style: TextStyle(color: Colors.deepPurple),
                  )
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
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
                     ),
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  Align(alignment: Alignment.centerRight,),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                        onPressed:(){
                          Navigator.pushNamed(context, '/ForgotPassword');
                          if(formKey.currentState!.validate()){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                          }
                    }, child: Text('Forgot password?',
                      style: TextStyle(color: Colors.deepPurple),
                    )
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: OutlinedButton(
                // style: ElevatedButton.styleFrom(primary: Colors.white,minimumSize: Size(100, 30)),
                  onPressed: (){
                    Navigator.pushNamed(context, '/Register');
                    if(formKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text('Sign in',
                    style: TextStyle(color: Colors.deepPurple),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

