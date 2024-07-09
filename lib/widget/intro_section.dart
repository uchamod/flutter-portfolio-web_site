import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/text_styles.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({super.key});

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child:
          //me section
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //intro section
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //name
              Row(
                children: [
                  Text(
                    "I'M",
                    style: GoogleFonts.bebasNeue(
                        textStyle: TextStyleClass.kcTitleText),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Chamod Udara",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyleClass.kcDisplaytext),
                  ),
                ],
              ),
              //position
              Text(
                "Flutter Developer & UI \nDesigner",
                style: GoogleFonts.roboto(
                  textStyle: TextStyleClass.kcTitleText.copyWith(
                    color: AppColors.kcTextWhiteColorShadow.withOpacity(0.65),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //contact button
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColors.kcExtratextOrangeColor, width: 2)),
                child: Text(
                  "Contact Me",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyleClass.kcLableSpecialText.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
          //my image
          Container(
            width: 400,
            height: 400,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("avatar.jpg"), fit: BoxFit.cover),
            ),
            // child: Image.asset(
            //   "avatar.jpg",
            //   fit: BoxFit.fill,
            // ),
          ),
        ],
      ),
    );
  }
}
