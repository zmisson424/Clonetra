import 'package:clonetra/theme/colors.dart';
import 'package:flutter/material.dart';

class TransportationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      child: InkWell(
        onTap: () => print("Todo"),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            top: 14, bottom: 14, left: 12
          ),
          child: Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: ClonetraColors.lightBlue,
                      borderRadius: BorderRadius.circular(2)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: ClonetraColors.darkGray,
                      size: 16,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
