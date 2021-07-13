import 'package:flutter/material.dart';

class CardsView extends StatefulWidget {

  _CardsViewState createState()=> _CardsViewState();
}

class _CardsViewState extends State<CardsView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Text(
        "Cards Page"
      ),
    );
  }
}