import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/View/Home/Designs/all_frontend_designs.dart';
import 'package:rive/rive.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: const RiveAnimation.asset(
              'assets/RiveAssets/bg.riv',
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
              child: const SizedBox(),
            ),
          ),


          const AllFrontendDesigns(),
        ],
      ),
    );
  }
}


