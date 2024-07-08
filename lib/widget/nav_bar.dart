import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/text_styles.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    //navigation bar
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: MediaQuery.of(context).size.height * 0.08,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: const LinearGradient(colors: [
          AppColors.kcBackgroundBlackColor,
          AppColors.kcCardBlackColor
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Row(
        children: [
          //logo
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
               
                color: AppColors.kcExtratextOrangeColor),
            child: Center(
              child: Text(
                "CU",
                style: TextStyleClass.kcTitleText
                    .copyWith(fontWeight: FontWeight.w800, fontSize: 24),
              ),
            ),
          ),
           SizedBox(
            width: MediaQuery.of(context).size.width*0.5,
          ),
          //navbar links
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //home section
                TextButton(
                  onPressed: () {},
                  child: Text("Home",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyleClass.kcLableText)),
                ),
                //skill secction
                TextButton(
                  onPressed: () {},
                  child: Text("Skills",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyleClass.kcLableText)),
                ),
                //project section
                TextButton(
                  onPressed: () {},
                  child: Text("Projects",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyleClass.kcLableText)),
                ),
                //contact section
                TextButton(
                  onPressed: () {},
                  child: Text("Contact me",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyleClass.kcLableText)),
                ),
                //link for blog page
                TextButton(
                  onPressed: () {},
                  child: Text("Blog",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyleClass.kcLableText)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
