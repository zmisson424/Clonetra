import 'package:clonetra/constants/icons.dart';
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
            top: 12, bottom: 12, left: 12, right: 12
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: ClonetraColors.iconBlue,
                      borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4,
                      right: 8
                    ),
                    child: Text(
                      "123",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Summit Ave & 14th St",
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 3
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      alignment: Alignment.center,
                      child: Image.asset(
                        ClonetraIcons.directionRight
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4,
                        right: 8
                      ),
                      child: Text(
                        "East",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(
                          right: 16
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "43",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                )
                              ),
                              TextSpan(
                                text: " min",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black
                                )
                              )
                            ]
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
