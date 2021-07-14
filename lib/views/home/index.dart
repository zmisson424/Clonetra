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
        left: 6,
        right: 6
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "ventra",
                style: TextStyle(
                  color: ClonetraColors.white
                ),
              ),
              Expanded(
                child: Container(),
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: widget.handleNavigationDrawer,
                child: Container(
                  width: 40,
                  child: Icon(
                    Icons.more_vert,
                    size: 20,
                    color: ClonetraColors.white
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