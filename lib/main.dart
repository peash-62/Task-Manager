import 'package:flutter/material.dart';
import 'package:taskkmanager/ui/screens/login.dart';
import 'package:taskkmanager/ui/screens/splash_screen.dart';

void main() {
  runApp(const TaskManagerApp());
}

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}



