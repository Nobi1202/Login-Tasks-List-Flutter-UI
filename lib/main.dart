import 'package:flutter/material.dart';
import 'package:login_tasks_list/dashboard/get_started_screen.dart';
import 'package:login_tasks_list/dashboard/sign_in_screen.dart';
import 'package:login_tasks_list/dashboard/sign_up_screen.dart';
import 'package:login_tasks_list/dashboard/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetStartedScreen(),
      routes: {
        SignUpScreen.routeName: (ctx) => const SignUpScreen(),
        SignInScreen.routeName: (ctx) => const SignInScreen(),
        WelcomeScreen.routeName: (ctx) => const WelcomeScreen(),
      },
    );
  }
}
