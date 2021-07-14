import 'package:clonetra/constants/icons.dart';
import 'package:clonetra/constants/images.dart';
import 'package:flutter/material.dart';

import 'widgets/locations.dart';
import 'widgets/nearby.dart';

class HomeView extends StatefulWidget {

  final Function() handleNavigationDrawer;
  final Function() handleAddFavoriteLocation;

  HomeView({
    required this.handleNavigationDrawer,
    required this.handleAddFavoriteLocation
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
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8
            ),
            child: Nearby(),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 16
            ),
            child: FavoriteLocations(
              onAddLocation: widget.handleAddFavoriteLocation,
            ),
          )
        ],
      )
    );
  }
}