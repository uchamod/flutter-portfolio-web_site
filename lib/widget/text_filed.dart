import 'package:flutter/material.dart';
import 'package:portflio/util/colors.dart';

class TextFiledWidget extends StatelessWidget {
  final String hintText;
  final int? maxLines;
  final TextEditingController? controller;
  const TextFiledWidget(
      {super.key,
      required this.hintText,
       this.maxLines,
       this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: const TextStyle(color: AppColors.kcBackgroundBlackColor),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(15),
          filled: true,
          fillColor: AppColors.kcTextWhiteColorShadow,
          border: outlineBorder,
          enabledBorder: outlineBorder,
          focusedBorder: outlineBorder,
          hintText: hintText,
          hintStyle:
              TextStyle(color: AppColors.kcCardBlackColor.withOpacity(0.5))),
    );
  }

  OutlineInputBorder get outlineBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
