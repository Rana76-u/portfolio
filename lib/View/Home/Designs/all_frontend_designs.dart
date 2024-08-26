import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/Controller/Home%20Bloc/home_bloc.dart';
import 'package:portfolio/Controller/Home%20Bloc/home_bloc_state.dart';

import '../Header/home_header.dart';
import 'Contacts/contacts_home.dart';
import 'Footer/footer.dart';
import 'Projects Design/projects.dart';
import 'my_intro_widget.dart';

class AllFrontendDesigns extends StatelessWidget {
  const AllFrontendDesigns({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeBlocState>(
      builder: (context, state) {
        return SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                controller: state.scrollController,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myIntroWidget(context),

                    projectsWidget(context),

                    const SizedBox(height: 250,),

                    contactsHomeWidget(context),

                    const SizedBox(height: 250,),

                    footerWidget()
                  ],
                ),
              ),

              Positioned(
                top: 20,
                child: homeHeader(context, state),
              ),
            ],
          ),
        );
      },
    );
  }
}

