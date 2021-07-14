import 'package:clonetra/constants/images.dart';
import 'package:clonetra/theme/colors.dart';
import 'package:flutter/material.dart';
import 'add_location.dart';

class FavoriteLocations extends StatelessWidget {

  final Function() onAddLocation;

  FavoriteLocations({
    required this.onAddLocation
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6)
      ),
      child: Container(
        padding: EdgeInsets.only(
          top: 8,
          bottom: 8
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
                      ClonetraImages.homeLocation
                    ),
                  ),
                ),
                Text(
                  "LOCATIONS",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ClonetraColors.navyBlue
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 8
              ),
              child: AddLocation(
                onAddLocation: onAddLocation,
              ),
            )
          ],
        ),
      ),
    );
  }
}