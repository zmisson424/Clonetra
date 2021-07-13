import 'package:flutter/material.dart';

class TicketView extends StatefulWidget {

  _TicketViewState createState()=> _TicketViewState();
}

class _TicketViewState extends State<TicketView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Text(
        "Ticket Page"
      ),
    );
  }
}