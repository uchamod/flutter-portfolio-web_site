import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portflio/data/main_skills_data.dart';
import 'package:portflio/data/skill_data.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/constant.dart';
import 'package:portflio/util/text_styles.dart';
import 'package:portflio/widget/aboutme_section.dart';
import 'package:portflio/widget/intro_section.dart';
import 'package:portflio/widget/main_skills.dart';
import 'package:portflio/widget/mobile_aboutme_section.dart';
import 'package:portflio/widget/mobile_enddrawer.dart';
import 'package:portflio/widget/mobile_intro_section.dart';
import 'package:portflio/widget/nav_bar.dart';
import 'package:portflio/widget/nav_bar_formobile.dart';
import 'package:portflio/widget/skillItem_widget.dart';

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
              width: double.maxFinite,
              color: AppColors.kcCardBlackColor.withOpacity(0.5),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "My Skills",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyleClass.kcTitleText),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (constraints.maxWidth >= mobileEdgeWidth)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0;
                            i < MainSkillsData.mainSkills.length;
                            i++)
                          MainSkills(
                              icon: MainSkillsData.mainSkills[i].icon,
                              title: MainSkillsData.mainSkills[i].title),
                      ],
                    )
                  else
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0;
                            i < MainSkillsData.mainSkills.length;
                            i++)
                          MainSkills(
                              icon: MainSkillsData.mainSkills[i].icon,
                              title: MainSkillsData.mainSkills[i].title),
                      ],
                    ),
                  if (constraints.maxWidth >= mobileEdgeWidth)
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0;
                                i < SkillData.skills.length / 2;
                                i++)
                              SkillItem(
                                  name: SkillData.skills[i].skillName,
                                  imag: SkillData.skills[i].skillIcon)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 3; i < SkillData.skills.length; i++)
                              SkillItem(
                                  name: SkillData.skills[i].skillName,
                                  imag: SkillData.skills[i].skillIcon)
                          ],
                        )
                      ],
                    )
                  else
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < SkillData.skills.length/3; i++)
                              SkillItem(
                                  name: SkillData.skills[i].skillName,
                                  imag: SkillData.skills[i].skillIcon)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 2; i < SkillData.skills.length-2; i++)
                              SkillItem(
                                  name: SkillData.skills[i].skillName,
                                  imag: SkillData.skills[i].skillIcon)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 4; i < SkillData.skills.length; i++)
                              SkillItem(
                                  name: SkillData.skills[i].skillName,
                                  imag: SkillData.skills[i].skillIcon)
                          ],
                        ),
                      ],
                    )
                ],
              ),
            ),

            //project section
            // Container(
            //   height: 500,
            //   width: double.maxFinite,
            //   color: Colors.green,
            // ),
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
