import 'package:flutter/material.dart';
import 'package:portflio/models/nav_barItemModel.dart';

class NavitemsData {
  static List<NavBarItemModel> navBarData = [
    NavBarItemModel(
      itemName: "Home",
      itemIcon: const Icon(Icons.home),
    ),
    NavBarItemModel(
      itemName: "Skils",
      itemIcon: const Icon(Icons.computer),
    ),
    NavBarItemModel(
      itemName: "Project",
      itemIcon: const Icon(Icons.adb),
    ),
    NavBarItemModel(
      itemName: "Contact me",
      itemIcon: const Icon(Icons.contact_page_rounded),
    ),
    NavBarItemModel(
      itemName: "Blog",
      itemIcon: const Icon(Icons.local_library),
    ),
  ];
  static List<String> navItems = [
    "Home",
    "Skills",
    "Projects",
    "Contact me",
    "Blog"
  ];
}
