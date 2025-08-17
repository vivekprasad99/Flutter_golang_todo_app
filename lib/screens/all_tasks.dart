import 'package:flutter/material.dart';
import 'package:flutter_golang_todo_app/colors/app_colors.dart';
import 'package:flutter_golang_todo_app/widgets/button_widgets.dart';
import 'package:flutter_golang_todo_app/widgets/task_widget.dart';
import 'package:get/get.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    List mydata = ["Try Harder", "Try Smarter"];

    final leftEditicon = Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Color(0xFF2e3253).withOpacity(0.5),
      alignment: Alignment.centerLeft,
      child: Icon(Icons.edit, color: Colors.white),
    );

    final rightDeleteIcon = Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.redAccent,
      alignment: Alignment.centerRight,
      child: Icon(Icons.delete, color: Colors.white),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 20, top: 60),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 3.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/header1.jpg"),
              ),
            ),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back, color: AppColors.secondaryColor),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Icon(Icons.home, color: AppColors.secondaryColor),
                SizedBox(width: 10),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.black,
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 20),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.calendar_month_sharp,
                  color: AppColors.secondaryColor,
                ),
                SizedBox(width: 10),
                Text(
                  "2",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: mydata.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  background: leftEditicon,
                  secondaryBackground: rightDeleteIcon,
                  key: ObjectKey(index),
                  onDismissed: (DismissDirection direction) {
                    print("after dissmiss");
                  },
                  confirmDismiss: (DismissDirection direction) async {
                    if (direction == DismissDirection.startToEnd) {
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        barrierColor: Colors.transparent,
                        context: context,
                        builder: (_) {
                          return Container(
                            height: 550,
                            decoration: BoxDecoration(
                              color: Color(0xFF2e3253).withOpacity(0.4),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ButtonWidgets(
                                    text: "View",
                                    backgroundColor: AppColors.mainColor,
                                    textColor: Colors.white,
                                  ),
                                  SizedBox(height: 20),
                                  ButtonWidgets(
                                    text: "Edit",
                                    backgroundColor: AppColors.mainColor,
                                    textColor: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                      return false;
                    } else {
                      return Future.delayed(
                        Duration(seconds: 1),
                        () => direction == DismissDirection.endToStart,
                      );
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: TaskWidget(
                      text: mydata[index],
                      color: Colors.blueGrey,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
