import 'package:flutter/material.dart';

import '../utils/app_theme_data.dart';

class NavBarIcons extends StatefulWidget {
  const NavBarIcons(
      {super.key,
      required this.callBack,
      required this.iconData,
      required this.isSelected});

  final IconData iconData;
  final bool isSelected;
  final VoidCallback callBack;

  @override
  State<NavBarIcons> createState() => _NavBarIconsState();
}

class _NavBarIconsState extends State<NavBarIcons> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.callBack(),
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: widget.isSelected ? Colors.black12 : Colors.transparent,
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Icon(
          widget.iconData,
          size: 30,
          color: AppThemeData.appTheme.primaryColor,
        ),
      ),
    );
  }
}
