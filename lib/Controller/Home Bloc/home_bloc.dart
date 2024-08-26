import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_bloc_events.dart';
import 'home_bloc_state.dart';

class HomeBloc extends Bloc<HomeBlocEvents, HomeBlocState>{
  HomeBloc() : super(HomeBlocState(
      ScrollController(),
      selectedIndex: 0
  )) {
    on<GotoContactsEvent>((event, emit) {
      ScrollController tempController = state.scrollController;

      //todo: issue here
      final offset = tempController.position.maxScrollExtent ;

      tempController.animateTo(
        offset,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );

      emit(state.copyWith(selectedIndex: 3)); //scrollController: state.scrollController
    });
  }
}