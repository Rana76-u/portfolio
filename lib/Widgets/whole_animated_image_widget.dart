import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/animated_image_section.dart';
import 'dart:math';

Widget animatedImageWidget(List<String> images) {
  List<String> shuffledImages1 = List.from(images)..shuffle(Random());
  List<String> shuffledImages2 = List.from(images)..shuffle(Random());
  List<String> shuffledImages3 = List.from(images)..shuffle(Random());

  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: SizedBox(
      height: 300,
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatedImageSection(images: shuffledImages1, lineIndex: 0,),
          AnimatedImageSection(images: shuffledImages2, lineIndex: 1,),
          AnimatedImageSection(images: shuffledImages3, lineIndex: 2,),
        ],
      ),
    ),
  );
}

