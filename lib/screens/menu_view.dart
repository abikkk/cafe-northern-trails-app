import 'package:Cafe_Northern_Trails/models/menu_item.dart';
import 'package:Cafe_Northern_Trails/ui_helpers/featured_section.dart';
import 'package:Cafe_Northern_Trails/utils/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key, required this.items});

  final List<MenuItem> items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              for (int i = 0; i < items.length; i++)
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
                          children: [SpecialSection(item: items[i])],
                        ),
                      ),
                      barrierColor: Colors.white54,
                      isDismissible: true,
                    );
                  },
                  child: ListTile(
                    minLeadingWidth: 100,
                    leading: Image.asset('assets/${items[i].imagePath}'),
                    title: Text(items[i].name),
                    subtitle: Text('${items[i].time} minutes'),
                    trailing: Text('\$ ${items[i].price.toString()}'),
                  ),
                )
            ],
          )),
    );
  }
}
