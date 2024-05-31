import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_starter/view/dashboard_view.dart';
import 'package:hive_starter/view/student_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod State Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const StudentView(),
    );
  }
}
