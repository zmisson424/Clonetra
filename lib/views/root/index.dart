import 'package:flutter/material.dart';

class ClonetraRoot extends StatefulWidget {

  _ClonetraRootState createState()=> _ClonetraRootState();
}

class _ClonetraRootState extends State<ClonetraRoot> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Text(
          "Clonetra Root File",
          style: TextStyle(
            fontSize: 24
          ),
        ),
      ),
    );
  }
}