import 'package:flutter/material.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/constant.dart';
import 'package:portflio/widget/aboutme_section.dart';
import 'package:portflio/widget/intro_section.dart';
import 'package:portflio/widget/mobile_aboutme_section.dart';
import 'package:portflio/widget/mobile_enddrawer.dart';
import 'package:portflio/widget/mobile_intro_section.dart';
import 'package:portflio/widget/nav_bar.dart';
import 'package:portflio/widget/nav_bar_formobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //scaffold key
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    //add layout constranits
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: ScaffoldKey,
        //set up enddrawer
        endDrawer: constraints.maxWidth >= mobileEdgeWidth
            ? null
            : const MobileEndDreaewr(),
        backgroundColor: AppColors.kcBackgroundBlackColor,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //home section
            Container(
             
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //navigation bar
                  if (constraints.maxWidth >= mobileEdgeWidth)
                    const NavBar()
                  else
                    MobileNavBar(
                      onTap: () {},
                      //open end drawer
                      onMenuBarTap: () {
                        ScaffoldKey.currentState?.openEndDrawer();
                      },
                    ),
                  //intro section
                  if (constraints.maxWidth >= mobileEdgeWidth)
                    const IntroSection()
                  else
                    const MobileIntroSection(),
                 
                  //about me section
                  if (constraints.maxWidth >= mobileEdgeWidth)
                    const AboutmeSection()
                  else
                    const MobileAboutMe(),
                ],
              ),
            ),
            //skill section
            Container(
              height: 500,
              width: double.maxFinite,
              color: AppColors.kcBackgroundBlackColor,
            ),
            //project section
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.green,
            ),
            //contact section
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.red,
            ),
          ],
        ),
      );
    });
  }
}
