import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../Services/screen_size.dart';
import '../../../../Widgets/whole_animated_image_widget.dart';
import 'projects_text_widget.dart';

Widget projectsWidget(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
        top: screenHeightPercentage(context, 0.1),
        left: screenWidthPercentage(context, 0.25),
        right: screenWidthPercentage(context, 0.25)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        projectsHeaderTitleWidget('Projects'),

        SizedBox(
          height: screenHeightPercentage(context, 0.05),
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            animatedImageWidget(
              [
                'assets/Images/SplitShare/splitshare0.png',
                'assets/Images/SplitShare/splitshare1.png',
                'assets/Images/SplitShare/splitshare2.png',
                'assets/Images/SplitShare/splitshare3.png',
                'assets/Images/SplitShare/splitshare4.png',
                'assets/Images/SplitShare/splitshare5.png',
              ]
            ),

            const SizedBox(width: 80,),

            SizedBox(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  projectTitleWidget('SplitShare'),

                  const SizedBox(height: 20,),

                  projectDescriptionWidget(''
                      'A Group Expense Tracker App.\n'
                      "Easily register group expenses by username."
                      " Expenses are stored both online and offline, ordered by time."
                      " Search and query by username, "
                      "and get a clear overview of each group member's expenses, per person cost, and total."
                      " See the split amount, each person's share,"
                      " and determines who pays or receives the balance.",
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 80,),

                      Text(
                          'Code',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(Bootstrap.github),
                      SizedBox(width: 20,),

                      Text(
                        'Preview',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),

                      SizedBox(width: 5,),
                      Icon(Bootstrap.google_play),
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}