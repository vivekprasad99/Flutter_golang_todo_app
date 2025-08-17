import 'package:flutter/material.dart';
import 'package:flutter_golang_todo_app/colors/app_colors.dart';
import 'package:flutter_golang_todo_app/widgets/button_widgets.dart';
import 'package:flutter_golang_todo_app/widgets/textfield_widget.dart';
import 'package:get/get.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/addtask1.jpg"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 60),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back),
                  color: AppColors.secondaryColor,
                ),
              ],
            ),
            Column(
              children: [
                TextFieldWidget(
                  textEditingController: nameController,
                  hintText: 'Task name',
                ),
                SizedBox(height: 20),
                TextFieldWidget(
                  textEditingController: detailController,
                  hintText: 'Task detail',
                  borderRadius: 15,
                  maxLines: 3,
                ),
                SizedBox(height: 20),
                ButtonWidgets(
                  text: "Add",
                  backgroundColor: AppColors.mainColor,
                  textColor: Colors.white,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 6),
          ],
        ),
      ),
    );
  }
}
