import 'package:flutter/material.dart';
import 'package:sun_training/sign_in_page.dart';
import 'package:sun_training/sign_in_social_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const SignInPage(),
      home: const SignInSocialPage(),
    );
  }
}
