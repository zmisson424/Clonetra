import 'package:clonetra/constants/icons.dart';
import 'package:clonetra/constants/images.dart';
import 'package:clonetra/theme/colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

  Function() handleNavigationDrawer;

  HomeView({
    required this.handleNavigationDrawer
  });

  _HomeViewState createState()=> _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(
        left: 12,
        right: 12
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 60,
                height: 24,
                child: Image.asset(
                  ClonetraImages.ventraLogo
                ),
              ),
              Expanded(
                child: Container(),
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: widget.handleNavigationDrawer,
                child: SizedBox(
                  width: 14,
                  height: 14,
                  child: Image.asset(
                    ClonetraIcons.menu
                  ),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}