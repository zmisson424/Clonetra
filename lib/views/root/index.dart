import 'package:clonetra/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:clonetra/views/home/index.dart';
import 'package:clonetra/views/cards/index.dart';
import 'package:clonetra/views/tickets/index.dart';
import 'package:clonetra/views/trip/index.dart';
import 'widgets/bottom_nav.dart';

class ClonetraRoot extends StatefulWidget {

  _ClonetraRootState createState()=> _ClonetraRootState();
}

class _ClonetraRootState extends State<ClonetraRoot> {

  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }

  Widget _buildTabs(){
    switch(_currentTab){
      case 0:
        return HomeView();
      case 1:
        return TripView();
      case 2:
        return CardsView();
      case 3:
        return TicketView();
      default:
        return HomeView();
    }
  }
}