import 'package:clonetra/constants/icons.dart';
import 'package:clonetra/constants/images.dart';
import 'package:clonetra/theme/colors.dart';
import 'package:flutter/material.dart';

class TicketView extends StatefulWidget {
  
  final Function() handleNavigationDrawer;

  TicketView({
    required this.handleNavigationDrawer
  });

  _TicketViewState createState()=> _TicketViewState();
}

class _TicketViewState extends State<TicketView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 24,
            child: Stack(
              children: [
                Positioned(
                  top: 6,
                  left: 0,
                  right: 0,
                  child: Text(
                    "Metra tickets",
                    style: TextStyle(
                      color: ClonetraColors.white,
                      fontSize: 14
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  top: 6,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 12,
                    ),
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: widget.handleNavigationDrawer,
                      child: SizedBox(
                        width: 14,
                        height: 14,
                        child: Image.asset(
                          ClonetraIcons.menu
                        ),
                      ),
                    )
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: ClonetraColors.white
              ),
              padding: EdgeInsets.only(
                top: 14
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20
                        ),
                        child: SizedBox(
                          width: 24,
                          height: 24,
                          child: Image.asset(
                            ClonetraIcons.refresh
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 174,
                    child: Image.asset(
                      ClonetraImages.phoneTicket
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 24,
                      bottom: 24
                    ),
                    child: Text(
                      "You do not have any tickets on this device.",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 14,
                        height: 14,
                        child: Image.asset(
                          ClonetraIcons.info
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10
                        ),
                        child: Text(
                          "Where did my tickets go?",
                          style: TextStyle(
                            fontSize: 11,
                            color: ClonetraColors.darkGray
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 52,
                      bottom: 22
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
                  _ItemDivider(),
                  _ItemRow(
                    label: "See transit history",
                    onTap: () => print("Todo"),
                  ),
                  _ItemDivider(),
                  _ItemRow(
                    label: "Move tickets to this device",
                    onTap: () => print("Todo"),
                  ),
                  _ItemDivider(),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

class _ItemDivider extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24
      ),
      child: Divider(
        height: 1,
        thickness: 1,
      ),
    );
  }
}

class _ItemRow extends StatelessWidget {

  final String label;

  final Function() onTap;

  _ItemRow({
    required this.label,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      color: ClonetraColors.white,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 14,
            bottom: 14
          ),
          child: Row(
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  color: ClonetraColors.darkGray
                ),
              ),
              Expanded(
                child: Container(),
              ),
              SizedBox(
                width: 14,
                height: 14,
                child: Image.asset(
                  ClonetraIcons.arrowForward
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}