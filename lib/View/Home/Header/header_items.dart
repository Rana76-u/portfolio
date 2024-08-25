import 'package:flutter/material.dart';
import 'package:portfolio/Services/screen_size.dart';

class HeaderItems extends StatefulWidget {
  const HeaderItems({super.key});

  @override
  State<HeaderItems> createState() => _HeaderItemsState();
}

class _HeaderItemsState extends State<HeaderItems> {
  int selectedIndex = 0;

  void animateContainer(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    List<String> itemNames = ['Home', 'About', 'Projects', 'Contact'];

    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => animateContainer(index),
          child: Padding(
            padding: EdgeInsets.only(
              top: 16,
              right: screenWidthPercentage(context, 0.02),
              left: screenWidthPercentage(context, 0.02),
              //vertical: screenWidthPercentage(context, 0.02),
            ),
            child: Column(
              children: [
                Text(
                  itemNames[index],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 1),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 3,
                  width: selectedIndex == index ? 20 : 0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue,
                  ),
                  curve: Curves.fastOutSlowIn,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
