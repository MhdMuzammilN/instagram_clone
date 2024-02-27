import 'package:flutter/material.dart';

import 'package:instagram_clone/view/splash_screen/splash_screen.dart';
import 'package:instagram_clone/view/user_login_screen/user_login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SafeArea(child: SplashScreen()),
      home: UserLoginScreen(),
    );
  }
}
