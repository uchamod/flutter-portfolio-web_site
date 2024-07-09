import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/text_styles.dart';

class AboutmeSection extends StatelessWidget {
  const AboutmeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "About Me",
              style: GoogleFonts.roboto(textStyle: TextStyleClass.kcTitleText),
            ),
          ),
          const Divider(
            color: AppColors.kcTextWhiteColorShadow,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "I am currently an undergraduate student at the University of Sri Jayewardenepura in Sri Lanka, specializing in Flutter mobile app development and UI design. My passion for technology drives me to create cross-platform applications that offer seamless user experiences and visually appealing interfaces. I blend my technical skills and design sensibilities to develop functional and aesthetically pleasing applications, continuously exploring new technologies to enhance my craft. I have worked on various projects ranging from utility apps to complex systems, demonstrating my ability to handle diverse development challenges. Thank you for visiting my portfolio, and feel free to reach out for any questions or collaboration opportunities!",
            style: GoogleFonts.roboto(
                textStyle: TextStyleClass.kcBodyText.copyWith(
              color: AppColors.kcTextWhiteColorShadow.withOpacity(0.65),
            )),
          )
        ],
      ),
    );
  }
}
