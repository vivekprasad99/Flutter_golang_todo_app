import 'package:flutter/material.dart';
import 'package:flutter_golang_todo_app/colors/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final double? borderRadius;
  final int? maxLines;

  const TextFieldWidget({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.borderRadius = 30,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      controller: textEditingController,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.textHolder,
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
      ),
    );
  }
}
