import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/Controller/Home%20Bloc/home_bloc_events.dart';
import 'package:portfolio/Services/screen_size.dart';

import '../../../Controller/Home Bloc/home_bloc.dart';
import '../../../Controller/Home Bloc/home_bloc_state.dart';

class HeaderItems extends StatelessWidget {
  final HomeBlocState state;
  const HeaderItems({super.key, required this.state});

  void animateContainer(BuildContext context, int index) {
    BlocProvider.of<HomeBloc>(context).add(GotoContactsEvent());
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
          onTap: () => animateContainer(context, index),
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
                  width: state.selectedIndex == index ? 20 : 0,
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

