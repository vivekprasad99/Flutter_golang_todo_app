import 'package:flutter/material.dart';
import 'package:flutter_golang_todo_app/colors/app_colors.dart';
import 'package:flutter_golang_todo_app/screens/add_task.dart';
import 'package:flutter_golang_todo_app/screens/all_tasks.dart';
import 'package:flutter_golang_todo_app/widgets/button_widgets.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/welcome.jpg"),
          ),
        ),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: "Hello",
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "\nstart your beautiful day",
                    style: TextStyle(
                      color: AppColors.smallTextColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 2.5),
            InkWell(
              onTap: (){
                Get.to(()=>AddTask(),transition: Transition.zoom,duration: Duration(microseconds: 500));
              },
              child: ButtonWidgets(
                text: "Add Task",
                textColor: Colors.white,
                backgroundColor: AppColors.mainColor,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: (){
                Get.to(()=>AllTasks(),transition: Transition.fade,duration: Duration(seconds: 1));
              },
              child: ButtonWidgets(
                text: "View All",
                textColor: AppColors.smallTextColor,
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
