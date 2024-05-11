import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/main_controller.dart';
import '../utils/app_theme_data.dart';
import '../utils/string_utils.dart';
import 'card_image_small.dart';
import 'featured_section.dart';
import 'menu_selection_row.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key, required this.mainController});

  final MainController mainController;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // SUB TEXTS
          Text(
            'Featured Specials',
            style: AppThemeData.appTheme.textTheme.displayMedium,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0;
                    i <
                        mainController.items
                            .where((element) => element.isSpecials)
                            .toList()
                            .length;
                    i++)
                  SpecialSection(item: mainController.items[i]),
              ],
            ),
          ),
          // OUR COURSES SECTION
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Menu',
                  style: AppThemeData.appTheme.textTheme.displayMedium,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(StringUtils.routeMenu,
                            arguments: mainController.items)!
                        .whenComplete(() {
                          
                        });
                  },
                  child: const Text(
                    'See all',
                  ),
                ),
              ],
            ),
          ),

          MenuSelectionRow(
            mainController: mainController,
          ),

          // CARD IMAGES
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: mainController.cardController,
                  children: [
                    for (int i = 0;
                        mainController.filteredItems.isEmpty
                            ? i < mainController.items.length
                            : i < mainController.filteredItems.length;
                        i++)
                      SmallCardImageStack(
                          item: mainController.filteredItems.isEmpty
                              ? mainController.items[i]
                              : mainController.filteredItems[i]),
                  ],
                ),
              ),
            ),
          ),
        ]));
    ;
  }
}
