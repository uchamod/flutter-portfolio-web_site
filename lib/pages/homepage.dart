import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portflio/data/main_skills_data.dart';
import 'package:portflio/data/project_data.dart';
import 'package:portflio/data/skill_data.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/constant.dart';
import 'package:portflio/util/social_links.dart';
import 'package:portflio/util/text_styles.dart';
import 'package:portflio/widget/aboutme_section.dart';
import 'package:portflio/widget/intro_section.dart';
import 'package:portflio/widget/main_skills.dart';
import 'package:portflio/widget/mobile_aboutme_section.dart';
import 'package:portflio/widget/mobile_enddrawer.dart';
import 'package:portflio/widget/mobile_intro_section.dart';
import 'package:portflio/widget/nav_bar.dart';
import 'package:portflio/widget/nav_bar_formobile.dart';
import 'package:portflio/widget/project_card.dart';
import 'package:portflio/widget/skillItem_widget.dart';
import 'package:portflio/widget/text_filed.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//text controlers
TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController massageController = TextEditingController();
//scrolle controllers
ScrollController scrollController = ScrollController();
final List<GlobalKey> navBarKeys = List.generate(
  5,
  (index) => GlobalKey(),
);

class _HomePageState extends State<HomePage> {
  //scaffold key
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    //add layout constranits
    double screenWidth = MediaQuery.of(context).size.width * 1;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: ScaffoldKey,
        //set up enddrawer
        endDrawer: constraints.maxWidth >= mobileEdgeWidth
            ? null
            : MobileEndDreaewr(
                onItemTap: (int index) {
                  Navigator.of(context).pop();
                  scrollToSection(index);
                },
              ),
        backgroundColor: AppColors.kcBackgroundBlackColor,
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              //home section
              Container(
                key: navBarKeys.first,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    AppColors.kcBackgroundBlackColor,
                    Color.fromARGB(255, 50, 61, 81),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //navigation bar
                    if (constraints.maxWidth >= mobileEdgeWidth)
                      NavBar(
                        onItemTap: (int index) {
                          scrollToSection(index);
                        },
                      )
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
                key: navBarKeys[1],
                width: double.maxFinite,
                color: AppColors.kcCardBlackColor.withOpacity(0.5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                              for (int i = 0;
                                  i < SkillData.skills.length / 3;
                                  i++)
                                SkillItem(
                                    name: SkillData.skills[i].skillName,
                                    imag: SkillData.skills[i].skillIcon)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int i = 2;
                                  i < SkillData.skills.length - 2;
                                  i++)
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

              // project section
              Container(
                key: navBarKeys[2],
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    AppColors.kcBackgroundBlackColor,
                    Color.fromARGB(255, 50, 61, 81),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                width: double.maxFinite,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  //title
                  children: [
                    Text(
                      "My Projects",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyleClass.kcTitleText),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    //project card
                    Wrap(spacing: 30, runSpacing: 30, children: [
                      for (int i = 0; i < ProjectData.projectData.length; i++)
                        ProjectCard(
                          projectModel: ProjectData.projectData[i],
                        ),
                    ]),
                  ],
                ),
              ),
              //contact section
              Container(
                key: navBarKeys[3],
                width: double.maxFinite,
                color: AppColors.kcCardBlackColor.withOpacity(0.5),
                padding: screenWidth > contactwidth
                    ? const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                        right: 150,
                        left: 150,
                      )
                    : const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                        right: 50,
                        left: 50,
                      ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Get in touch",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyleClass.kcTitleText),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //screenWidth > mobileEdgeWidth
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 100,
                      ),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth > mobileEdgeWidth) {
                            return buildDekstopContactSection();
                          }
                          return buildMobileContactSection();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFiledWidget(
                      controller: massageController,
                      hintText: "Your massage",
                      maxLines: 15,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //send button
                    AnimatedOpacity(
                      duration: const Duration(seconds: 1),
                      opacity: opacityLevel,
                      curve: Curves.easeIn,
                      child: SizedBox(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  AppColors.kcExtratextOrangeColor)),
                          onPressed: () {
                            nameController.clear();
                            emailController.clear();
                            massageController.clear();
                            _changeOpacity();
                          },
                          child: const Text(
                            "Get in touch",
                            style: TextStyleClass.kcLableText,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    //links for socials
                    Wrap(
                      spacing: 10,
                      children: [
                        InkWell(
                          onTap: () {
                            js.context
                                .callMethod("open", [SocialLinks.facebooklink]);
                          },
                          child: Image.asset(
                            "assets/social/icons8-facebook-100.png",
                            width: 28,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            js.context
                                .callMethod("open", [SocialLinks.githublink]);
                          },
                          child: Image.asset(
                            "assets/icons8-github-48.png",
                            width: 28,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            js.context
                                .callMethod("open", [SocialLinks.linkedlink]);
                          },
                          child: Image.asset(
                            "assets/social/icons8-linked-in-100.png",
                            width: 28,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            js.context
                                .callMethod("open", [SocialLinks.mediumlink]);
                          },
                          child: Image.asset(
                            "assets/social/icons8-medium-48.png",
                            width: 28,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            js.context
                                .callMethod("open", [SocialLinks.telegramlink]);
                          },
                          child: Image.asset(
                            "assets/social/icons8-telegram-100.png",
                            width: 28,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //fotter
              Container(
                height: MediaQuery.of(context).size.width * 0.05,
                color: AppColors.kcBackgroundBlackColor,
                alignment: Alignment.center,
                child: const Text(
                  "Created by @Chamod Udara",
                  style: TextStyleClass.kcLableSpecialText,
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  //in destop size
  Row buildDekstopContactSection() {
    return Row(
      children: [
        Flexible(
          child: TextFiledWidget(
            controller: nameController,
            hintText: "Your name",
            maxLines: 1,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Flexible(
          child: TextFiledWidget(
            controller: emailController,
            hintText: "Your email",
            maxLines: 1,
          ),
        ),
      ],
    );
  }

  //in mobile size
  Column buildMobileContactSection() {
    return const Column(
      children: [
        Flexible(
          child: TextFiledWidget(
            hintText: "Your name",
            maxLines: 1,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Flexible(
          child: TextFiledWidget(
            hintText: "Your email",
            maxLines: 1,
          ),
        ),
      ],
    );
  }

  void scrollToSection(int index) {
    if (index == 4) {
      js.context.callMethod("open", [SocialLinks.mediumlink]);
    }
    final key = navBarKeys[index];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  double opacityLevel = 1.0;
  void _changeOpacity() {
    setState(() {
      opacityLevel == 1.0 ? opacityLevel = 0.5 : opacityLevel = 1.0;
    });
  }
}
