import 'package:clonetra/theme/colors.dart';
import 'package:flutter/material.dart';

class AddLocation extends StatelessWidget {

  final Function() onAddLocation;

  AddLocation({
    required this.onAddLocation
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onAddLocation,
      child: Container(
        padding: EdgeInsets.only(
          top: 14,
          bottom: 14,
          left: 12
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 8
              ),
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: ClonetraColors.lightBlue,
                  shape: BoxShape.circle
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.favorite,
                  color: ClonetraColors.white,
                  size: 14,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add Favorite Location",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6
                    ),
                    child: Text(
                      "Search for a location",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w200
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}