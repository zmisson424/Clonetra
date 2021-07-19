import 'package:clonetra/constants/icons.dart';
import 'package:clonetra/theme/colors.dart';
import 'package:flutter/material.dart';
import 'widgets/map.dart';

class TripView extends StatefulWidget {

  final Function() handleNavigationDrawer;

  TripView({
    required this.handleNavigationDrawer
  });

  _TripViewState createState()=> _TripViewState();
}

class _TripViewState extends State<TripView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 42,
                  padding: EdgeInsets.only(
                    left: 8
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.black.withOpacity(.15),
                      filled: true,
                      hintText: "Search for line, station or destination",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: ClonetraColors.lightGray
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.transparent
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.transparent
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.transparent
                        )
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: ClonetraColors.lightGray,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 12,
                  left: 40
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
          Padding(
            padding: EdgeInsets.only(
              top: 8
            ),
            child: ClonetraMap(),
          )
        ],
      )
    );
  }
}