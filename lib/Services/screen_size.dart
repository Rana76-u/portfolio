import 'package:flutter/material.dart';

double screenHeightPercentage(BuildContext context, double percentage) {
  return MediaQuery.of(context).size.height * percentage;
}

double screenWidthPercentage(BuildContext context, double percentage) {
  return MediaQuery.of(context).size.width * percentage;
}