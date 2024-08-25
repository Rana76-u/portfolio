import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/Services/locator.dart';

Widget footerWidget() {
  return Container(
    height: 110,
    width: double.infinity,
    color: Colors.black,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //Ex: Happy Sunday 9:00 AM, New York, USA
        FutureBuilder<String>(
          future: fetchTimeAndLocation(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text(
                "Loading...",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              );
            } else if (snapshot.hasError) {
              return Text(
                "Error: ${snapshot.error}",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              );
            } else {
              return Text(
                snapshot.data ?? "No data",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              );
            }
          },
        ),

        const Row(
          children: [
            Icon(Bootstrap.linkedin, color: Colors.white,),
            SizedBox(width: 20,),
            Icon(Bootstrap.github, color: Colors.white,),
          ],
        )
      ],
    ),
  );
}