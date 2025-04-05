import 'package:flutter/material.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/widget/logo.dart';

class MobileNavBar extends StatelessWidget {
 
  const MobileNavBar(
      {super.key, required this.onTap, required this.onMenuBarTap, });
  final VoidCallback onTap;
  final VoidCallback onMenuBarTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: const LinearGradient(colors: [
          AppColors.kcBackgroundBlackColor,
          AppColors.kcCardBlackColor
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyLoGo(
            onTap: onTap,
          ),
          IconButton(
            onPressed: onMenuBarTap,
            icon: const Icon(
              Icons.menu,
              size: 24,
              color: AppColors.kcTextWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
