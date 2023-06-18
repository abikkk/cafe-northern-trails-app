import 'package:Cafe_Northern_Trails/utils/app_colors.dart';
import 'package:Cafe_Northern_Trails/utils/app_theme_data.dart';
import 'package:flutter/material.dart';

class InkwellOptions extends StatefulWidget {
  const InkwellOptions(
      {super.key,
      required this.label,
      required this.callBack,
      required this.isSelected});

  final String label;
  final bool isSelected;
  final VoidCallback callBack;

  @override
  State<InkwellOptions> createState() => _InkwellOptionsState();
}

class _InkwellOptionsState extends State<InkwellOptions> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.callBack(),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:
              widget.isSelected ? AppThemeData.appTheme.primaryColor : tertiary,
          border:
              Border.all(width: 1, color: AppThemeData.appTheme.primaryColor),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Text(widget.label,
            style: AppThemeData.appTheme.textTheme.bodyLarge!.copyWith(
              color: widget.isSelected
                  ? Colors.white
                  : AppThemeData.appTheme.primaryColor,
              fontWeight: FontWeight.bold,
            )
            ),
      ),
    );
  }
}
