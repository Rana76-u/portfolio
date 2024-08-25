import 'package:flutter/material.dart';

Widget projectsHeaderTitleWidget(String text) {
  return Text(
    text.toUpperCase(),
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: Colors.blue,
    ),
  );
}

Widget projectTitleWidget(String title) {
  return Expanded(
    flex: 0,
    child: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Widget projectDescriptionWidget(String text) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 13,
      color: Colors.grey.shade700
    ),
    textAlign: TextAlign.center,
  );
}