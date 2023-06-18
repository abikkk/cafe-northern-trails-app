import 'package:Cafe_Northern_Trails/controllers/main_controller.dart';
import 'package:Cafe_Northern_Trails/ui_helpers/end_drawer.dart';
import 'package:Cafe_Northern_Trails/ui_helpers/home_body.dart';
import 'package:Cafe_Northern_Trails/ui_helpers/menu_selection_row.dart';
import 'package:Cafe_Northern_Trails/ui_helpers/sliver_app_bar.dart';
import 'package:Cafe_Northern_Trails/utils/app_theme_data.dart';
import 'package:Cafe_Northern_Trails/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../ui_helpers/featured_section.dart';
import '../ui_helpers/card_image_small.dart';
import '../ui_helpers/navbar.dart';

class HomeView extends StatefulWidget {
  const HomeView(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.mainController});

  final String title, subtitle;
  final MainController mainController;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late MainController mainController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mainController = widget.mainController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: true,

      endDrawer: const EndDrawer(),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          CustomSliverAppBar(
            title: widget.title,
            subtitle: widget.subtitle,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((_, int index) {
            return HomeBody(mainController: mainController);
          }, childCount: 1))
        ],
      ),

      // MIDDLE DOCKED FLOATING BUTTON
      // floatingActionButton: Container(
      //   padding: const EdgeInsets.all(8),
      //   decoration: BoxDecoration(
      //     color: const Color(0xFF944dff),
      //     border: Border.all(width: 1, color: const Color(0xFF944dff)),
      //     borderRadius: const BorderRadius.all(
      //         Radius.circular(StringUtils.containerBorderRadiusSmall)),
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.grey.withOpacity(0.5),
      //         spreadRadius: 2,
      //         blurRadius: 4,
      //         offset: const Offset(0, 2), // changes position of shadow
      //       ),
      //     ],
      //   ),
      //   child: IconButton(
      //     onPressed: () {
      //       Get.toNamed('/home');
      //     },
      //     icon: const Icon(
      //       Icons.list,
      //       // size: 44,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavBarIcons(
              callBack: () {
                Get.toNamed(StringUtils.routeHome);
                // setState(() {
                //   navSelection = 0;
                // });
              },
              iconData: Icons.home,
              isSelected: mainController.navSelection.value == 0 ? true : false,
            ),
            NavBarIcons(
                callBack: () {
                  Get.toNamed(StringUtils.routeContact);
                },
                isSelected:
                    mainController.navSelection.value == 2 ? true : false,
                iconData: Icons.contact_phone),
          ],
        ),
      ),
    );
  }
}
