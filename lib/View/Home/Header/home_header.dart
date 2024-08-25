import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/View/Home/Header/header_items.dart';

Widget homeHeader(BuildContext context) {
  return SizedBox(
    height: 57,
    width: MediaQuery.of(context).size.width,
    child: Row(
      children: [
    
        const Spacer(),

        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8), // Adjust opacity to achieve desired blur effect
            borderRadius: BorderRadius.circular(50),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 35, sigmaY: 35), // Adjust sigmaX and sigmaY for desired blur intensity
              child: const HeaderItems(),
            ),
          ),
        ),
    
        const Spacer()
    
      ],
    ),
  );
}