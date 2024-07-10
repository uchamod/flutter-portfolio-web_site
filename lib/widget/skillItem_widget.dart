import 'package:flutter/material.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/text_styles.dart';

class SkillItem extends StatelessWidget {
  final String name;
  final String imag;
  const SkillItem({super.key, required this.name, required this.imag});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.15,
      height: MediaQuery.of(context).size.width*0.15,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(25),
        boxShadow:  const [
          BoxShadow(
              offset: Offset(2, 2),
              color: AppColors.kcCardBlackColor,
              ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imag,width: 100,),
          Text(
            name,
            style: TextStyleClass.kcBodyText,
          ),
        ],
      ),
    );
  }
}
