import 'package:clonetra/constants/icons.dart';
import 'package:clonetra/theme/colors.dart';
import 'package:flutter/material.dart';

class ClonetraBottomNav extends StatelessWidget {

  final int selected;

  final Function(int) onSelect;

  ClonetraBottomNav({
    required this.selected,
    required this.onSelect
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: ClonetraColors.bottomNavigationBar,
      child: Container(
        width: double.infinity,
        height: 51,
        child: Row(
          children: [
            _BarItem(
              label: "Home", 
              icon: selected == 0 ? ClonetraIcons.navHomeActive : ClonetraIcons.navHomeInactive,
              selected: selected == 0,
              onTap: () => onSelect(0),
            ),
            _BarItem(
              label: "Trip Tools", 
              icon: selected == 1 ? ClonetraIcons.navTripsActive : ClonetraIcons.navTripsInactive,
              selected: selected == 1,
              onTap: () => onSelect(1),
            ),
            _BarItem(
              label: "Cards", 
              icon: selected == 2 ? ClonetraIcons.navCardsActive : ClonetraIcons.navCardsInactive,
              selected: selected == 2,
              onTap: () => onSelect(2),
            ),
            _BarItem(
              label: "Tickets", 
              icon: selected == 3 ? ClonetraIcons.navTicketsActive : ClonetraIcons.navTicketsInactive,
              selected: selected == 3,
              onTap: () => onSelect(3),
            ),
          ],
        ),
      ),
    );
  }
}

class _BarItem extends StatelessWidget {

  final String label;

  final String icon;

  final bool selected;

  final Function() onTap;

  _BarItem({
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.translucent,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      icon,
                      width: 36,
                      height: 36,
                      fit: BoxFit.cover,
                    ),
                  ],
                )
              ),
              Positioned(
                bottom: 8,
                left: 0,
                right: 0,
                child: Text(
                  label,
                  style: TextStyle(
                    color: selected ? ClonetraColors.bottomNavigationBarSelected : ClonetraColors.bottomNavigationBarItem,
                    fontSize: 12
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}