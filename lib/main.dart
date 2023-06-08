import 'package:Cafe_Northern_Trails/screens/contact_view.dart';
import 'package:Cafe_Northern_Trails/screens/menu_view.dart';
import 'package:Cafe_Northern_Trails/utils/app_theme_data.dart';
import 'package:Cafe_Northern_Trails/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      theme: AppThemeData.appTheme,
      getPages: [
        GetPage(
          name: StringUtils.routeHome,
          page: () => const HomeView(
              title: 'Northern Trails,',
              subtitle: 'welcome'),
        ),
        GetPage(
          name: StringUtils.routeContact,
          page: () => const ContactView(),
        ),
        GetPage(
          name: StringUtils.routeMenu,
          page: () => const MenuView(
            items: [],
          ),
        ),
      ],
    ));
  }
}
