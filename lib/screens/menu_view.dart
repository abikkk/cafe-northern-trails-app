import 'package:Cafe_Night_Trails/controllers/main_controller.dart';
import 'package:Cafe_Night_Trails/ui_helpers/featured_section.dart';
import 'package:Cafe_Night_Trails/utils/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui_helpers/menu_selection_row.dart';

class MenuView extends StatelessWidget {
  MenuView({super.key, required this.mainController});

  final MainController mainController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Menu',
              style: AppThemeData.appTheme.textTheme.displayLarge!
                  .copyWith(color: Colors.white))),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: MenuSelectionRow(mainController: mainController),
              ),
              Expanded(
                child: Obx(
                  () => ListView(
                    children: [
                      for (int i = 0;
                          mainController.filteredItems.isEmpty
                              ? i < mainController.items.length
                              : i < mainController.filteredItems.length;
                          i++)
                        InkWell(
                          onTap: () {
                            Get.bottomSheet(
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(12.0),
                                      topLeft: Radius.circular(12.0)),
                                  color: AppThemeData.appTheme.primaryColor,
                                ),
                                child: Wrap(
                                  children: [
                                    SpecialSection(
                                        item: mainController
                                                .filteredItems.isEmpty
                                            ? mainController.items[i]
                                            : mainController.filteredItems[i])
                                  ],
                                ),
                              ),
                              barrierColor: Colors.white54,
                              isDismissible: true,
                            );
                          },
                          child: ListTile(
                            minLeadingWidth: 100,
                            leading: Image.asset(
                                'assets/${mainController.filteredItems.isEmpty ? mainController.items[i].imagePath : mainController.filteredItems[i].imagePath}'),
                            title: Text(mainController.filteredItems.isEmpty
                                ? mainController.items[i].name
                                : mainController.filteredItems[i].name),
                            subtitle: Text(
                                '${mainController.filteredItems.isEmpty ? mainController.items[i].time : mainController.filteredItems[i].time} minutes'),
                            trailing: Text(
                                '\$ ${mainController.filteredItems.isEmpty ? mainController.items[i].price.toString() : mainController.filteredItems[i].price.toString()}'),
                          ),
                        )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
