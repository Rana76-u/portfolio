import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../Services/screen_size.dart';
import '../Projects Design/projects_text_widget.dart';

Widget contactsHomeWidget(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
      left: screenWidthPercentage(context, 0.25),
      right: screenWidthPercentage(context, 0.25),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        projectsHeaderTitleWidget('Contact'),

        const Text(
          'Reach Me Anytime',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20,
          ),
        ),

        SizedBox(
          height: screenHeightPercentage(context, 0.05),
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //todo: go to link on click
            contactElement(Icons.mail_rounded, 'Mail', 'mdrafiqulislamrana76@gmail.com'),
            contactElement(Bootstrap.linkedin, 'LinkedIn', 'https://www.linkedin.com/in/md-rafiqul-islam-rana/'),
            contactElement(Bootstrap.facebook, 'FaceBook', 'https://www.facebook.com/Rafiqul76'),
          ],
        ),

        const SizedBox(height: 25,),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            contactElement(Bootstrap.telegram, 'Telegram', '8801521762061'),
            contactElement(Icons.phone, 'Phone/Whatsapp', '+8801521762061'),
          ],
        ),
      ],
    ),
  );
}

Widget contactElement(IconData iconData, String title, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(
        iconData,
        color: Colors.blue,
        size: 33,
      ),
      const SizedBox(width: 20,),
      SizedBox(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w900
              ),
              overflow: TextOverflow.clip,
            ),

            SelectableText(
              text,
              style: TextStyle(
                  color: Colors.grey.shade600,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      )
    ],
  );
}