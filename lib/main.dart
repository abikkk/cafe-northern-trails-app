import 'package:Cafe_Northern_Trails/controllers/main_controller.dart';
import 'package:Cafe_Northern_Trails/screens/account_view.dart';
import 'package:Cafe_Northern_Trails/screens/contact_view.dart';
import 'package:Cafe_Northern_Trails/screens/login_view.dart';
import 'package:Cafe_Northern_Trails/screens/menu_view.dart';
import 'package:Cafe_Northern_Trails/screens/sign_up_view.dart';
import 'package:Cafe_Northern_Trails/utils/app_theme_data.dart';
import 'package:Cafe_Northern_Trails/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final MainController mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return (GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: StringUtils.routeHome,
      theme: AppThemeData.appTheme,
      getPages: [
        GetPage(
          name: StringUtils.routeHome,
          page: () => HomeView(
              title: 'Northern Trails',
              subtitle: 'Welcome',
              mainController: mainController),
        ),
        GetPage(
          name: StringUtils.routeContact,
          page: () => const ContactView(),
        ),
        GetPage(
          name: StringUtils.routeMenu,
          page: () => MenuView(
            mainController: mainController,
          ),
        ),
        GetPage(
          name: StringUtils.routeLogin,
          page: () => const LoginView(),
        ),
        GetPage(
          name: StringUtils.routeSignUp,
          page: () => const SignUpView(),
        ),
        GetPage(
          name: StringUtils.routeAccount,
          page: () => const AccountView(),
        ),
      ],
    ));
  }
}
