import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/constant.dart';
import 'package:portflio/util/text_styles.dart';

class MainSkills extends StatelessWidget {
  final IconData icon;
  final String title;

  const MainSkills({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * 1;
    return Container(
      //width: MediaQuery.of(context).size.width * 0.15,
      margin: screenWidth > mobileEdgeWidth
          ? const EdgeInsets.all(30)
          : const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: AppColors.kcCardBlackColor.withOpacity(0.5),
          boxShadow: const [
            BoxShadow(
                color: AppColors.kcCardBlackColor,
                offset: Offset(1, 1),
                spreadRadius: 1),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icon,
              size: 24,
              color: AppColors.kcTextWhiteColor.withOpacity(0.6),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: GoogleFonts.roboto(textStyle: TextStyleClass.kcBodyText),
            )
          ],
        ),
      ),
    ).animate().scale(duration: 1000.ms);
  }
}
