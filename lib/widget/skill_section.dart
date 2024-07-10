import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:portflio/data/main_skills_data.dart';
import 'package:portflio/models/main_skills.dart';

import 'package:portflio/widget/main_skills.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: MainSkillsData.mainSkills.length,
      itemBuilder: (context, index) {
        SkillCategory skill = MainSkillsData.mainSkills[index];
        return MainSkills(icon: skill.icon, title: skill.title);
      },
    );
  }
}
