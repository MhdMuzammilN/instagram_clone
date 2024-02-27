import 'package:flutter/material.dart';
import 'package:instagram_clone/view/select_saved_users/select_saved_users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SelectSavedUsers(),
    );
  }
}
