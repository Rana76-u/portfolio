import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' as flutter;
import 'package:icons_plus/icons_plus.dart';
import '../../../Services/screen_size.dart';

Widget myIntroWidget(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
        left: screenWidthPercentage(context, 0.25),
        top: screenHeightPercentage(context, 0.26)
    ),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: screenWidthPercentage(context , 0.3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text(
                    'Full Stack Flutter Developer',
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w900,
                        height: 1.2
                    ),              ),
                  const SizedBox(height: 16,),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Hi I'm Md Rafiqul Islam Rana."
                              " A passionate full stack flutter developer."
                              " Based in Dhaka, Bangladesh. ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        WidgetSpan(
                          child: Icon(
                            Icons.location_pin,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),
                  const Row(
                    children: [
                      Icon(Bootstrap.linkedin),
                      SizedBox(width: 15,),
                      Icon(Bootstrap.github),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(width: 50,),
            SizedBox(
              width: screenWidthPercentage(context , 0.2),
              height: screenHeightPercentage(context, 0.35),
              child: flutter.Image.asset(
                'assets/Images/rafiqul.png',
              ),
            ),
          ],
        ),

        const SizedBox(height: 60,),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 7),
              child: Text(
                'Skill Set',
                style: TextStyle(
                    fontSize: 17,
                  fontWeight: FontWeight.w900
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidthPercentage(context, 0.03),
                  right: screenWidthPercentage(context, 0.03),
                top: 7
              ),
              child: Container(
                width: 1.5, // Adjust the width according to your requirement
                height: 30, // Adjust the height according to your requirement
                color: Colors.black,
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    skillSetImageWidget('assets/icons/studio.png', 'Android Studio', 7.5),

                    const SizedBox(width: 20,),

                    skillSetImageWidget('assets/icons/flutter.png', 'Flutter', 0),

                    const SizedBox(width: 30,),

                    skillSetImageWidget('assets/icons/firebase.png', 'Firebase', 5),

                    const SizedBox(width: 40,),

                    skillSetImageWidget('assets/icons/mysql.png', '', 0),

                  ],
                ),

                const SizedBox(height: 25,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    skillSetImageWidget('assets/icons/bloc.png', 'Bloc', 10),

                    const SizedBox(width: 30,),

                    skillSetImageWidget('assets/icons/getx.png', 'GetX', 0),

                    const SizedBox(width: 40,),

                    skillSetImageWidget('assets/icons/hive.png', 'Hive', 7.5),

                    const SizedBox(width: 40,),

                    skillSetImageWidget('assets/icons/shared_pref.png', 'Shared Preferences', 0),

                    const SizedBox(width: 40,),
                  ],
                ),

                const SizedBox(height: 25,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    skillSetImageWidget('assets/icons/rive.png', 'Rive', 0),

                    const SizedBox(width: 30,),

                    skillSetImageWidget('assets/icons/mvvm.png', 'MVVM', 3.5),
                  ],
                ),
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget skillSetImageWidget(String imagePath, String text, double width) {
  return Row(
    children: [
      flutter.Image.asset(
        imagePath,
        height: 40,
      ),

      SizedBox(width: width,),

      Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: Colors.grey.shade600,
        ),
      )
    ],
  );
}

