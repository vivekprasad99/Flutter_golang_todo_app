import 'package:flutter/material.dart';
import 'package:flutter_golang_todo_app/screens/add_task.dart';
import 'package:flutter_golang_todo_app/screens/all_tasks.dart';
import 'package:flutter_golang_todo_app/screens/home_screens.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}