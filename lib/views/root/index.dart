import 'package:clonetra/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:clonetra/views/home/index.dart';
import 'package:clonetra/views/cards/index.dart';
import 'package:clonetra/views/tickets/index.dart';
import 'package:clonetra/views/trip/index.dart';
import 'widgets/bottom_nav.dart';
import 'package:clonetra/widgets/nav_drawer.dart';

class ClonetraRoot extends StatefulWidget {

  _ClonetraRootState createState()=> _ClonetraRootState();
}

class _ClonetraRootState extends State<ClonetraRoot> {

  int _currentTab = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ClonetraImages.background,
            ),
            fit: BoxFit.fill
          )
        ),
        child: SafeArea(
          child: _buildTabs(),
        ),
      ),
      bottomNavigationBar: ClonetraBottomNav(
        selected: _currentTab,
        onSelect: (tab){
          setState(() {
            _currentTab = tab;
          });
        },
      ),
      endDrawer: ClonetraNavDrawer(),
      endDrawerEnableOpenDragGesture: false,
    );
  }

  Widget _buildTabs(){
    switch(_currentTab){
      case 0:
        return HomeView(
          handleNavigationDrawer: _openNavigationDrawer,
          handleAddFavoriteLocation: (){
            setState(() {
              _currentTab = 1;
            });
          },
        );
      case 1:
        return TripView(
          handleNavigationDrawer: _openNavigationDrawer,
        );
      case 2:
        return CardsView(
          handleNavigationDrawer: _openNavigationDrawer,
        );
      case 3:
        return TicketView(
          handleNavigationDrawer: _openNavigationDrawer,
        );
      default:
        return HomeView(
          handleNavigationDrawer: _openNavigationDrawer,
          handleAddFavoriteLocation: (){
            setState(() {
              _currentTab = 1;
            });
          },
        );
    }
  }

  void _openNavigationDrawer(){
    _scaffoldKey.currentState?.openEndDrawer();
  }
}