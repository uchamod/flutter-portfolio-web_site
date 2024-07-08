import 'package:flutter/material.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/widget/mobile_enddrawer.dart';
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
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: ScaffoldKey,
        //set up enddrawer
        endDrawer:
            constraints.maxWidth >= 850 ? null : const MobileEndDreaewr(),
        backgroundColor: AppColors.kcBackgroundBlackColor,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //home section
            Container(
              height: 500,
              width: double.maxFinite,
              child: Column(
                children: [
                  if (constraints.maxWidth >= 850)
                    const NavBar()
                  else
                    MobileNavBar(
                      onTap: () {},
                      //open end drawer
                      onMenuBarTap: () {
                        ScaffoldKey.currentState?.openEndDrawer();
                      },
                    )
                ],
              ),
            ),
            //skill section
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blue,
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
