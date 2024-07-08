import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portflio/data/navitems_data.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/text_styles.dart';

class MobileEndDreaewr extends StatefulWidget {
  const MobileEndDreaewr({super.key});

  @override
  State<MobileEndDreaewr> createState() => _MobileEndDreaewrState();
}

class _MobileEndDreaewrState extends State<MobileEndDreaewr> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      shadowColor: AppColors.kcCardBlackColor,
      elevation: 2,
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          //close button
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.close_outlined,
                  size: 28,
                ),
              ),
            ),
          ),
          //nav bar item list
          for (int i = 0; i < NavitemsData.navBarData.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.only(left: 20, bottom: 10),
              leading: NavitemsData.navBarData[i].itemIcon,
              title: Text(
                NavitemsData.navBarData[i].itemName,
                style:
                    GoogleFonts.openSans(textStyle: TextStyleClass.kcLableText),
              ),
              onTap: () {},
            )
        ],
      ),
    );
  }
}
