import 'package:clonetra/constants/icons.dart';
import 'package:clonetra/theme/colors.dart';
import 'package:flutter/material.dart';

class CardsView extends StatefulWidget {

  final Function() handleNavigationDrawer;

  CardsView({
    required this.handleNavigationDrawer
  });

  _CardsViewState createState()=> _CardsViewState();
}

class _CardsViewState extends State<CardsView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            child: Stack(
              children: [
                Positioned(
                  top: 6,
                  left: 0,
                  right: 0,
                  child: Text(
                    "Ventra Cards",
                    style: TextStyle(
                      color: ClonetraColors.white,
                      fontSize: 14
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: _handleAddVentraCard,
                        child: SizedBox(
                          width: 28,
                          height: 28,
                          child: Image.asset(
                            ClonetraIcons.addCard
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                          left: 12
                        ),
                        child: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: widget.handleNavigationDrawer,
                          child: SizedBox(
                            width: 16,
                            height: 16,
                            child: Image.asset(
                              ClonetraIcons.menu
                            ),
                          ),
                        )
                      ),
                    ],
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
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset(
                          ClonetraIcons.refresh
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "You don't have any cards on this account",
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 46,
                    child: OutlinedButton(
                      onPressed: () => print("Todo"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(ClonetraColors.buttonBlue),
                      ),
                      child: Text(
                        "Add Ventra Card to Google Pay",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ClonetraColors.white
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 14
                    ),
                    child: Text(
                      "OR",
                      style: TextStyle(
                        fontSize: 12,
                        color: ClonetraColors.darkGray,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 14
                    ),
                    child: Text(
                      "Register a Ventra Card",
                      style: TextStyle(
                        fontSize: 16,
                        color: ClonetraColors.darkGray
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8,
                      bottom: 60
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have a Ventra card?",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () => print("TODO"),
                          child: Text(
                            "Find out how",
                            style: TextStyle(
                              color: ClonetraColors.buttonBlue,
                              fontSize: 16
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }

  void _handleAddVentraCard(){
    // TODO
  }
}