import 'package:flutter/material.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/text_styles.dart';

class MyLoGo extends StatelessWidget {
  const MyLoGo({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: AppColors.kcExtratextOrangeColor),
        child: Center(
          child: Text(
            "CU",
            style: TextStyleClass.kcTitleText
                .copyWith(fontWeight: FontWeight.w800, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
