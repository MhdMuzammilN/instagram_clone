import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/image_constants.dart';
import 'package:instagram_clone/view/select_saved_users/select_saved_users.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SelectSavedUsers(),
      // Center(
      //   child: Image.asset(
      //     ImageConstants.instagramLogo,
      //     scale: 1.5,
      //   ),
      // ),
    );
  }
}
