import 'package:flutter/material.dart';

class ClonetraNavDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: double.infinity,
        child: Column(
          children: [
            Text(
              "Hello, Person",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}