import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portflio/util/colors.dart';
import 'package:portflio/util/text_styles.dart';

class MobileIntroSection extends StatefulWidget {
  const MobileIntroSection({super.key});

  @override
  State<MobileIntroSection> createState() => _MobileIntroSectionState();
}

class _MobileIntroSectionState extends State<MobileIntroSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
             //my image
          Container(
            width: MediaQuery.of(context).size.width*0.275,
            height: MediaQuery.of(context).size.width*0.275,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("avatar.jpg"), fit: BoxFit.cover),
            ),
          
          ),

           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //name
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I'M",
                    style: GoogleFonts.bebasNeue(
                        textStyle: TextStyleClass.kcTitleText.copyWith(fontSize:20 )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Chamod Udara",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyleClass.kcDisplaytext.copyWith(fontSize:44)),
                  ),
                ],
              ),
              //position
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     Text(
                "Flutter Developer & UI \nDesigner",
                style: GoogleFonts.roboto(
                  textStyle: TextStyleClass.kcTitleText.copyWith(
                    color: AppColors.kcTextWhiteColorShadow.withOpacity(0.65),
                    fontSize:20 ,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //contact button
              GestureDetector(
                onTap: () {
                  
                },
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
                         fontSize:16 ,
                      ),
                    ),
                  ),
                ),
              ),
                ],
              ),
             
            ],
          ),

        ],
      ),
    );
  }
}
