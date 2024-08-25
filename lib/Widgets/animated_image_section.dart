import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedImageSection extends StatefulWidget {
  final List<String> images;
  final int lineIndex;
  const AnimatedImageSection({
    super.key,
    required this.images,
    required this.lineIndex
  });

  @override
  State<AnimatedImageSection> createState() => _AnimatedImageSectionState();
}

class _AnimatedImageSectionState extends State<AnimatedImageSection> {
  final ScrollController _scrollController = ScrollController();
  final double _scrollSpeed = 5; // Adjust this to change the scrolling speed
  Random random = Random();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _startScrolling());
  }

  void _startScrolling() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        final maxScrollExtent = _scrollController.position.maxScrollExtent;
        //final currentScrollPosition = _scrollController.position.pixels;
        //final distanceToEnd = maxScrollExtent - currentScrollPosition;

        _scrollController.animateTo(
          maxScrollExtent,
          duration: Duration(seconds: (random.nextInt(5) + 8 * _scrollSpeed).toInt()), //distanceToEnd
          curve: Curves.linear,
        ).then((_) {
          _scrollController.animateTo(
            0.0,
            duration: Duration(seconds: (random.nextInt(5) + 8 * _scrollSpeed).toInt()), //maxScrollExtent
            curve: Curves.linear,
          ).then((_) {
            _startScrolling();
          });
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 130,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView.builder(
          controller: _scrollController,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                  left: widget.lineIndex == 0 ? 0 : 2,
                  right: widget.lineIndex == 2 ? 0 : 2,
                  top: 10,
                  bottom: 10
              ),
              child: Image.asset(
                widget.images[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
