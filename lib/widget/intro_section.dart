import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/text_styles.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({super.key});

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 6));
    _animationController.repeat(reverse: true);
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child:
          //me section
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //intro section
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //name
              Row(
                children: [
                  Text(
                    "I'M",
                    style: GoogleFonts.bebasNeue(
                        textStyle: TextStyleClass.kcTitleText),
                  ).animate().scale(delay: 1000.ms, duration: 1000.ms),
                  const SizedBox(
                    width: 10,
                  ),
                  Animate(
                    delay: const Duration(seconds: 1),
                    effects: const [
                      ScaleEffect(duration: Duration(seconds: 1))
                    ],
                    child: Text(
                      "Chamod Udara",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyleClass.kcDisplaytext),
                    ),
                  ),
                ],
              ),
              //position
              ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    stops: [
                      _animation.value - 0.5,
                      _animation.value,
                      _animation.value + 0 / 5,
                    ],
                    colors: [
                      AppColors.kcTextWhiteColor.withOpacity(0.8),
                      AppColors.kcTextWhiteColorShadow.withOpacity(0.6),
                      AppColors.kcTextWhiteColor.withOpacity(0.4),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(rect);
                },
                child: Text(
                  "Flutter Developer & UI \nDesigner",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyleClass.kcTitleText,
                  ),
                ).animate().scale(delay: 1000.ms, duration: 1000.ms),
              ),
              const SizedBox(
                height: 15,
              ),
              //contact button
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.kcExtratextOrangeColor, width: 2)),
                  child: Text(
                    "Contact Me",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyleClass.kcLableSpecialText.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
                    .animate()
                    .scale(delay: 1000.ms, duration: 1000.ms)
                    .then(delay: 500.ms)
                    .slide(),
              ),
            ],
          ),
          //my image
          Container(
            width: MediaQuery.of(context).size.width * 0.275,
            height: MediaQuery.of(context).size.width * 0.275,
            decoration: BoxDecoration(
              border:
                  Border.all(color: AppColors.kcExtratextOrangeColor, width: 2),
              shape: BoxShape.circle,
              image: const DecorationImage(
                  image: AssetImage("assets/avatar.jpg"), fit: BoxFit.cover),
            ),
          ).animate().scale(delay: 1000.ms, duration: 1000.ms),
        ],
      ),
    );
  }
}
