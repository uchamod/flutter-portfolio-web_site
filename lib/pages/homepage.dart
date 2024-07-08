import 'package:flutter/material.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/widget/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kcBackgroundBlackColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //home section
          Container(
            height: 500,
            width: double.maxFinite,
            child: const Column(
              children: [
                NavBar(),
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
  }
}
