import 'package:Cafe_Northern_Trails/controllers/main_controller.dart';
import 'package:Cafe_Northern_Trails/ui_helpers/featured_section.dart';
import 'package:Cafe_Northern_Trails/utils/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuView extends StatelessWidget {
  MenuView({
    super.key,required this.mainController
  });

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
          child: ListView(
            children: [
              for (int i = 0; i < mainController.items.length; i++)
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
                            SpecialSection(item: mainController.items[i])
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
                        'assets/${mainController.items[i].imagePath}'),
                    title: Text(mainController.items[i].name),
                    subtitle: Text('${mainController.items[i].time} minutes'),
                    trailing:
                        Text('\$ ${mainController.items[i].price.toString()}'),
                  ),
                )
            ],
          )),
    );
  }
}
