import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portflio/models/project_model.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/constant.dart';
import 'package:portflio/util/text_styles.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectCard({
    super.key,
    required this.projectModel,
  });

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width * 1;
    //project card
    return Container(
      clipBehavior: Clip.antiAlias,
      height: screenSize > mobileEdgeWidth
          ? MediaQuery.of(context).size.width * 0.3
          : MediaQuery.of(context).size.width * 0.9,
      width: screenSize > mobileEdgeWidth
          ? MediaQuery.of(context).size.width * 0.25
          : MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.kcCardBlackColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //project image
          Image.asset(
            projectModel.img,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            //project title
            child: Text(
              projectModel.title,
              style: TextStyleClass.kcBodyText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            //project sub title
            child: Text(projectModel.subTitle,
                style: TextStyleClass.kcLableText.copyWith(
                  color: AppColors.kcTextWhiteColorShadow.withOpacity(0.65),
                )),
          ),
          const Spacer(),
          Container(
            color: AppColors.kcBackgroundBlackColor.withOpacity(0.4),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Available",
                  style: TextStyleClass.kcBodyText,
                ),
                const Spacer(),
                //web link
                if (projectModel.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [projectModel.webLink]);
                      },
                      child: Image.asset(
                        "assets/icons8-web-50.png",
                        width: 30,
                      ),
                    ),
                  ),
                //git hub link
                if (projectModel.iosLink != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [projectModel.iosLink]);
                      },
                      child: Image.asset(
                        "assets/icons8-github-48.png",
                        width: 30,
                      ),
                    ),
                  ),
                //android link
                if (projectModel.androidLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [projectModel.androidLink]);
                    },
                    child: Image.asset(
                      "assets/icons8-android-48.png",
                      width: 30,
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
