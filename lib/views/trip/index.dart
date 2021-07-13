import 'package:flutter/material.dart';

class TripView extends StatefulWidget {

  _TripViewState createState()=> _TripViewState();
}

class _TripViewState extends State<TripView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Text(
        "Trip Page"
      ),
    );
  }
}