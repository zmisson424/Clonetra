import 'package:clonetra/constants/icons.dart';
import 'package:clonetra/theme/colors.dart';
import 'package:flutter/material.dart';

class Tickets extends StatelessWidget {

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
                      ClonetraIcons.metraTicket
                    ),
                  ),
                ),
                Text(
                  "METRA TICKETS",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ClonetraColors.navyBlue
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4
                  ),
                  child: Text(
                    "on this device",
                    style: TextStyle(
                      fontSize: 12,
                      color: ClonetraColors.darkGray
                    ),
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
                top: 16,
                left: 8
              ),
              child: Row(
                children: [
                  Container(
                    width: 26,
                    height: 16,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ClonetraColors.darkGray
                      ),
                      borderRadius: BorderRadius.circular(
                        10
                      )
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "1",
                      style: TextStyle(
                        color: ClonetraColors.buttonBlue,
                        fontSize: 10
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10
                    ),
                    child: Text(
                      "STORED TICKETS",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: ClonetraColors.darkGray
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                    height: 10,
                    child: Image.asset(
                      ClonetraIcons.arrowUp
                    ),
                  )
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8,
                right: 8,
                top: 20,
                bottom: 12
              ),
              child: Container(
                width: double.infinity,
                height: 44,
                child: OutlinedButton(
                  onPressed: () => print("Todo"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(ClonetraColors.buttonBlue),
                  ),
                  child: Text(
                    "Buy Metra tickets",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ClonetraColors.white
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}