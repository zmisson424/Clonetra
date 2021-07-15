import 'package:clonetra/constants/images.dart';
import 'package:clonetra/constants/icons.dart';
import 'package:clonetra/theme/colors.dart';
import 'package:flutter/material.dart';

import 'package:clonetra/widgets/transportation_tile.dart';

class Nearby extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6)
      ),
      child: Container(
        padding: EdgeInsets.only(
          top: 16,
          bottom: 10
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 8,
                    right: 6
                  ),
                  child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                      ClonetraImages.nearby
                    ),
                  ),
                ),
                Text(
                  "NEARBY",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ClonetraColors.navyBlue
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 8
                  ),
                  child: SizedBox(
                    width: 14,
                    height: 14,
                    child: Image.asset(
                      ClonetraIcons.arrowForward
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 8
              ),
              child: Column(
                children: [
                  TransportationTile(),
                  Divider(
                    thickness: 1,
                    height: 1,
                  ),
                  TransportationTile(),
                  Divider(
                    thickness: 1,
                    height: 1,
                  ),
                  TransportationTile(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}