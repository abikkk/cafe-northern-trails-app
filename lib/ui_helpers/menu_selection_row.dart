import 'package:Cafe_Northern_Trails/controllers/main_controller.dart';
import 'package:Cafe_Northern_Trails/ui_helpers/inkwell_options.dart';
import 'package:flutter/material.dart';

class MenuSelectionRow extends StatefulWidget {
  const MenuSelectionRow({super.key, required this.mainController});

  final MainController mainController;

  @override
  State<MenuSelectionRow> createState() => _MenuSelectionRowState();
}

class _MenuSelectionRowState extends State<MenuSelectionRow> {
  @override
  Widget build(BuildContext context) {
    return // COURSE SELECTION SECTION
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkwellOptions(
            label: 'All',
            callBack: () {
              setState(() {
                widget.mainController.courseSelection.value = 0;
              });
              widget.mainController.filteredItems.value =
                  widget.mainController.items;
            },
            isSelected: widget.mainController.courseSelection.value == 0),
        InkwellOptions(
            label: 'Popular',
            callBack: () {
              setState(() {
                widget.mainController.courseSelection.value = 1;
              });
              widget.mainController.filteredItems.value = widget
                  .mainController.items
                  .where((element) => element.isPopular)
                  .toList();
            },
            isSelected: widget.mainController.courseSelection.value == 1),
        InkwellOptions(
            label: 'Newest',
            callBack: () {
              setState(() {
                widget.mainController.courseSelection.value = 2;
              });
              widget.mainController.filteredItems.value = widget
                  .mainController.items
                  .where((element) => element.isNewest)
                  .toList();
            },
            isSelected: widget.mainController.courseSelection.value == 2),
        InkwellOptions(
            label: 'Milk-based',
            callBack: () {
              setState(() {
                widget.mainController.courseSelection.value = 3;
              });
              widget.mainController.filteredItems.value = widget
                  .mainController.items
                  .where((element) => element.isMilkBased)
                  .toList();
            },
            isSelected: widget.mainController.courseSelection.value == 3),
      ],
    );
  }
}
