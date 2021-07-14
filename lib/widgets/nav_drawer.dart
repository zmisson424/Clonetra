import 'package:clonetra/constants/icons.dart';
import 'package:clonetra/constants/images.dart';
import 'package:clonetra/theme/colors.dart';
import 'package:flutter/material.dart';

class ClonetraNavDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ClonetraImages.background
            ),
            fit: BoxFit.fill
          )
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 88,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(
                left: 28,
                bottom: 12
              ),
              child: Text(
                "Hello, Anakin",
                style: TextStyle(
                  color: ClonetraColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
            ),
            _NavHeader(label: "Account Information"),
            _NavItem(
              label: "Account",
              subtitle: "askywalker",
              icon: ClonetraIcons.account,
              onTap: () => print("Todo"),
            ),
            _NavItem(
              label: "Payment methods",
              icon: ClonetraIcons.payment,
              onTap: () => print("Todo"),
            ),
            _NavItem(
              label: "Login & security",
              icon: ClonetraIcons.security,
              onTap: () => print("Todo"),
            ),
            _NavItem(
              label: "Manage alerts",
              icon: ClonetraIcons.alerts,
              onTap: () => print("Todo"),
            ),
            _NavItem(
              label: "More Settings",
              icon: ClonetraIcons.settings,
              onTap: () => print("Todo"),
              disableBorder: true,
            ),
            _NavHeader(label: "Ventra Information"),
            _NavItem(
              label: "Maps",
              icon: ClonetraIcons.maps,
              onTap: () => print("Todo"),
            ),
            _NavItem(
              label: "Terms & conditions",
              icon: ClonetraIcons.terms,
              onTap: () => print("Todo"),
            ),
            _NavItem(
              label: "Help",
              icon: ClonetraIcons.help,
              onTap: () => print("Todo"),
              disableBorder: true,
            ),
            Expanded(
              child: Container(
                color: ClonetraColors.lightGray,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(
                  left: 50,
                  right: 50
                ),
                child: Container( 
                  width: double.infinity,
                  height: 42,
                  child: OutlinedButton(
                    onPressed: () => print("todo"),
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ClonetraColors.darkGray,
                        fontSize: 18
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _NavHeader extends StatelessWidget {

  final String label;

  _NavHeader({
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 16,
        bottom: 16,
        left: 16
      ),
      color: ClonetraColors.lightGray,
      child: Text(
        label.toUpperCase(),
        style: TextStyle(
          color: ClonetraColors.darkGray,
          fontWeight: FontWeight.bold,
          fontSize: 12
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  
  final String label;
  final String icon;
  final String? subtitle;

  final bool disableBorder;

  final Function() onTap;

  _NavItem({
    required this.label,
    required this.onTap,
    required this.icon,
    this.subtitle,
    this.disableBorder : false
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: ClonetraColors.white
        ),
        padding: EdgeInsets.only(
          left: 16,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: disableBorder ? Colors.transparent : ClonetraColors.lightGray
              )
            )
          ),
          height: 46,
          padding: EdgeInsets.only(
            right: 10
          ),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 8
                ),
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    icon,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                  subtitle != null ?
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1
                    ),
                    child: Text(
                      subtitle!,
                      style: TextStyle(
                        fontSize: 12,
                        color: ClonetraColors.darkGray
                      ),
                    ),
                  ): Container()
                ],
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
          ),
        ),
      )
    );
  }
}