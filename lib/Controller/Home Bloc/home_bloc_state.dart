import 'package:flutter/material.dart';

class HomeBlocState {
  final int selectedIndex;
  final ScrollController scrollController;

  HomeBlocState(
      this.scrollController, {
    required this.selectedIndex,
  });


  HomeBlocState copyWith({
    int? selectedIndex,
    ScrollController? scrollController,
  }) {
    return HomeBlocState(
      scrollController ?? this.scrollController,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}