import 'package:flutter/material.dart';

import '../utils/string_utils.dart';

class CustomSearchField extends StatefulWidget {
  const CustomSearchField({super.key});

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  @override
  Widget build(BuildContext context) {
    return
        // SEARCH BAR
        Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFF944dff),
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(StringUtils.containerBorderRadius),
          bottomLeft: Radius.circular(StringUtils.containerBorderRadius),
        ),
        border: Border.all(
          style: BorderStyle.none,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: const BorderRadius.all(
                    Radius.circular(StringUtils.iconBorderRadius)),
              ),
              child: const SearchBar(),
            ),
          ),

          // FILTER ICON BUTTON
          Container(
              margin: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: const BorderRadius.all(
                    Radius.circular(StringUtils.iconBorderRadius)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.filter_list,
                  size: 25,
                ),
              )),
        ],
      ),
    );
  }
}
