import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/text_styles.dart';

class MainSkills extends StatelessWidget {
  final IconData icon;
  final String title;
  const MainSkills({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.1,
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: AppColors.kcCardBlackColor.withOpacity(0.5),
          boxShadow: const [
            BoxShadow(
                color: AppColors.kcCardBlackColor,
                offset: Offset(1, 1),
                spreadRadius: 1),
          ]),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                icon,
                size: 20,
                color: AppColors.kcTextWhiteColor.withOpacity(0.6),
              ),
              Text(
                title,
                style: GoogleFonts.roboto(
                    textStyle: TextStyleClass.kcBodyText),
              )
            ],
          )),
    );
  }
}
