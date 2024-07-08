import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portflio/data/navitems_data.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/text_styles.dart';
import 'package:portflio/widget/logo.dart';

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
          MyLoGo(
            onTap: () {},
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          //navbar links
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //home section
                for (int i = 0; i < NavitemsData.navItems.length; i++)
                  TextButton(
                    onPressed: () {},
                    child: Text(NavitemsData.navItems[i],
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
