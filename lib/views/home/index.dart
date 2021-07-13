import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

  _HomeViewState createState()=> _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Text(
        "Home Page"
      ),
    );
  }
}