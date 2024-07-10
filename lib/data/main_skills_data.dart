import 'package:flutter/material.dart';
import 'package:portflio/models/main_skills.dart';

class MainSkillsData {
  static List<SkillCategory> mainSkills = [
    SkillCategory(icon: Icons.android, title: "Android Dev"),
    SkillCategory(icon: Icons.apple, title: "IOS dev"),
    SkillCategory(icon: Icons.computer_outlined, title: "Microservices"),
    SkillCategory(icon: Icons.design_services, title: "UI design")
  ];
}
