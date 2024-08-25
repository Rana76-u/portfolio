import 'package:flutter/material.dart';
import 'package:portfolio/View/Home/Designs/Contacts/contacts_home.dart';
import 'package:portfolio/View/Home/Designs/Footer/footer.dart';
import '../Header/home_header.dart';
import 'Projects Design/projects.dart';
import 'my_intro_widget.dart';

Widget allFrontEndDesigns(BuildContext context) {
  return SafeArea(
    child: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myIntroWidget(context),
          
              projectsWidget(context),
          
              const SizedBox(height: 250,),
          
              contactsHomeWidget(context),
          
              const SizedBox(height: 250,),
          
              footerWidget()
            ],
          ),
        ),

        Positioned(
          top: 20,
          child: homeHeader(context),
        ),
      ],
    ),
  );
}