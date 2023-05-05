import 'package:Cafe_Northern_Trails/screens/contact_view.dart';
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

  // This widget is the root of your application.
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
              title: 'Welcome to Northern Trails,',
              subtitle: 'Hope your day gets better!'),
        ),
        // GetPage(
        //   name: '/menu',
        //   page: () => const HomeView(
        //       title: 'Welcome to Northern Trails,',
        //       subtitle: 'Hope your day gets better!'),
        // ),
        // GetPage(
        //   name: '/cart',
        //   page: () => const HomeView(
        //       title: 'Welcome to Northern Trails,',
        //       subtitle: 'Hope your day gets better!'),
        // ),
        GetPage(
          name: StringUtils.routeContact,
          page: () => const ContactView(),
        ),
      ],
    ));
    // return const MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Cafe Northern Trails',
    //   home: HomeView(
    //       title: 'Welcome to Northern Trails,',
    //       subtitle: 'Hope your day gets better!'),
    // );
  }
}
