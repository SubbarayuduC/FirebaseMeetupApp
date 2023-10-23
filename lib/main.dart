

import 'package:flutter/material.dart';
import 'package:signin_page/screens/ForgotPasswordPage.dart';
import 'package:signin_page/screens/Homepage.dart';
import 'package:signin_page/screens/LogoutPage.dart';
import 'package:signin_page/screens/RegisterPage.dart';
import 'package:signin_page/screens/SigninPage.dart';



void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeScreen(),
      '/Second': (context) => SigninPage(),
      '/Third': (context) => Register(),
      '/Fourth': (context) => ForgotPassword(),
      '/Fifth': (context) => const LogOutScreen(),
    },
  ));
}
