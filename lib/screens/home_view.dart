import 'package:Cafe_Northern_Trails/controllers/main_controller.dart';
import 'package:Cafe_Northern_Trails/screens/menu_view.dart';
import 'package:Cafe_Northern_Trails/utils/app_theme_data.dart';
import 'package:Cafe_Northern_Trails/utils/page_router.dart';
import 'package:Cafe_Northern_Trails/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/menu_item.dart';
import '../ui_helpers/featured_section.dart';
import '../ui_helpers/card_image_small.dart';
import '../ui_helpers/inkwell_options.dart';
import '../ui_helpers/navbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.title, required this.subtitle});
  final String title, subtitle;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int courseSelection = 0, navSelection = 0;
  List<MenuItem> items = [], filteredItems = [];
  final MainController mainController = MainController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeItems();
  }

  initializeItems() {
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'americano.png',
        stars: 4,
        name: 'Americano',
        time: '4-5',
        reviews: '40+',
        price: 0.9,
        cook: '',
        isSpecials: false,
        isPopular: true,
        isNewest: false,
        isMilkBased: false,
        isCocktail: false,
        hasAlcohol: false));
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'americano_cocktail.png',
        stars: 5,
        name: 'Americano Cocktail',
        time: '7-8',
        reviews: '20+',
        price: 1.4,
        cook: 'Rabin Dhoju',
        isSpecials: true,
        isPopular: false,
        isNewest: true,
        isMilkBased: false,
        isCocktail: false,
        hasAlcohol: true));
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'cappuccino.png',
        stars: 4,
        name: 'Cappuccino',
        time: '3-5',
        reviews: '50+',
        price: 1.2,
        cook: '',
        isSpecials: false,
        isPopular: true,
        isNewest: false,
        isMilkBased: true,
        isCocktail: false,
        hasAlcohol: false));
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'caramel_coffee.png',
        stars: 5,
        name: 'Caramel Coffee',
        time: '7-8',
        reviews: '40+',
        price: 1.5,
        cook: 'Retesh Thapa Magar',
        isSpecials: true,
        isPopular: true,
        isNewest: false,
        isMilkBased: true,
        isCocktail: false,
        hasAlcohol: false));
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'chocolate_iced_frappe.png',
        stars: 5,
        name: 'Chocolate Iced Frappe',
        time: '8-10',
        reviews: '45+',
        price: 2.2,
        cook: 'Retesh Thapa Magar',
        isSpecials: true,
        isPopular: true,
        isNewest: true,
        isMilkBased: true,
        isCocktail: true,
        hasAlcohol: false));
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'cortado.png',
        stars: 3,
        name: 'Cortado',
        time: '3-5',
        reviews: '50+',
        price: 1.2,
        cook: '',
        isSpecials: false,
        isPopular: false,
        isNewest: true,
        isMilkBased: false,
        isCocktail: false,
        hasAlcohol: false));
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'espresso.png',
        stars: 4,
        name: 'Espresso',
        time: '2-3',
        reviews: '60+',
        price: 0.7,
        cook: '',
        isSpecials: false,
        isPopular: true,
        isNewest: false,
        isMilkBased: true,
        isCocktail: false,
        hasAlcohol: false));
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'flat_white.png',
        stars: 5,
        name: 'Flat White',
        time: '5-6',
        reviews: '40+',
        price: 1.2,
        cook: '',
        isSpecials: false,
        isPopular: false,
        isNewest: false,
        isMilkBased: true,
        isCocktail: false,
        hasAlcohol: false));
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'frappe.png',
        stars: 5,
        name: 'Frappe',
        time: '7-8',
        reviews: '50+',
        price: 1.6,
        cook: '',
        isSpecials: true,
        isPopular: true,
        isNewest: false,
        isMilkBased: true,
        isCocktail: false,
        hasAlcohol: false));
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'cappuccino.png',
        stars: 5,
        name: 'Cappuccino',
        time: '3-5',
        reviews: '50+',
        price: 1.0,
        cook: '',
        isSpecials: false,
        isPopular: false,
        isNewest: false,
        isMilkBased: true,
        isCocktail: false,
        hasAlcohol: false));
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'glace_coffee.png',
        stars: 5,
        name: 'Glace Coffee',
        time: '3-5',
        reviews: '50+',
        price: 1.0,
        cook: 'Retesh Thapa Magar',
        isSpecials: true,
        isPopular: false,
        isNewest: true,
        isMilkBased: true,
        isCocktail: false,
        hasAlcohol: false));
    items.add(MenuItem(
        isDrink: false,
        imagePath: 'ice_cream_bowl.png',
        stars: 2,
        name: 'Ice Cream Bowl',
        time: '3-5',
        reviews: '24+',
        price: 1.3,
        cook: '',
        isSpecials: false,
        isPopular: true,
        isNewest: false,
        isMilkBased: true,
        isCocktail: false,
        hasAlcohol: false));
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'irish_coffee.png',
        stars: 3,
        name: 'Irish Coffee',
        time: '3-5',
        reviews: '24+',
        price: 1.8,
        cook: '',
        isSpecials: false,
        isPopular: true,
        isNewest: false,
        isMilkBased: false,
        isCocktail: true,
        hasAlcohol: true));
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'mocaccino.png',
        stars: 5,
        name: 'Mocaccino',
        time: '3-5',
        reviews: '38+',
        price: 2.0,
        cook: 'Rabin Dhoju',
        isSpecials: true,
        isPopular: true,
        isNewest: false,
        isMilkBased: true,
        isCocktail: true,
        hasAlcohol: false));
    items.add(MenuItem(
        isDrink: true,
        imagePath: 'mocha_milkshake_frappe.png',
        stars: 4,
        name: 'Mocha Milkshake Frappe',
        time: '8-10',
        reviews: '34+',
        price: 2.2,
        cook: 'Retesh Thapa Magar',
        isSpecials: false,
        isPopular: true,
        isNewest: true,
        isMilkBased: true,
        isCocktail: true,
        hasAlcohol: false));

    filteredItems = items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        // backgroundColor: const Color(0xFF944dff),
        elevation: 8,
        title: Padding(
          padding:
              const EdgeInsets.only(top: 20.0, right: 15, left: 15, bottom: 20),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: Icon(
                  Icons.account_box,
                  size: 50,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    widget.subtitle,
                    style: const TextStyle(fontSize: 14, color: Colors.white60),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: const [
          // Container(
          //     margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          //     width: 40,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       border: Border.all(width: 1, color: Colors.white),
          //       borderRadius: const BorderRadius.all(
          //           Radius.circular(StringUtils.iconBorderRadiusSmall)),
          //     ),
          //     child: IconButton(
          //         onPressed: () {},
          //         icon: const Icon(
          //           Icons.circle_notifications_sharp,
          //           size: 20,
          //           color: Color(0xFF944dff),
          //         )))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // SEARCH BAR
            // Container(
            //   padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
            //   decoration: BoxDecoration(
            //     color: const Color(0xFF944dff),
            //     borderRadius: const BorderRadius.only(
            //       bottomRight:
            //           Radius.circular(StringUtils.containerBorderRadius),
            //       bottomLeft:
            //           Radius.circular(StringUtils.containerBorderRadius),
            //     ),
            //     border: Border.all(
            //       style: BorderStyle.none,
            //     ),
            //   ),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Container(
            //           decoration: BoxDecoration(
            //             color: Colors.white,
            //             border: Border.all(width: 1, color: Colors.white),
            //             borderRadius: const BorderRadius.all(
            //                 Radius.circular(StringUtils.iconBorderRadius)),
            //           ),
            //           child: const SearchBar(),
            //         ),
            //       ),

            //       // FILTER ICON BUTTON
            //       Container(
            //           margin: const EdgeInsets.only(left: 15),
            //           decoration: BoxDecoration(
            //             color: Colors.white,
            //             border: Border.all(width: 1, color: Colors.white),
            //             borderRadius: const BorderRadius.all(
            //                 Radius.circular(StringUtils.iconBorderRadius)),
            //           ),
            //           child: const Padding(
            //             padding: EdgeInsets.all(12.0),
            //             child: Icon(
            //               Icons.filter_list,
            //               size: 25,
            //             ),
            //           )),
            //     ],
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SUB TEXTS
                  Text(
                    'Featured Specials',
                    style: AppThemeData.appTheme.textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (int i = 0;
                            i <
                                items
                                    .where((element) => element.isSpecials)
                                    .toList()
                                    .length;
                            i++)
                          SpecialSection(item: items[i]),
                      ],
                    ),
                  ),
                  // OUR COUSES SECTION
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Menu',
                          style: AppThemeData.appTheme.textTheme.titleMedium,
                        ),
                        const Text(
                          'See all',
                        ),
                      ],
                    ),
                  ),

                  // COURSE SELECTION SECTION
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkwellOptions(
                          label: 'All',
                          callBack: () {
                            setState(() {
                              courseSelection = 0;
                              filteredItems = items;
                            });
                          },
                          isSelected: courseSelection == 0),
                      InkwellOptions(
                          label: 'Popular',
                          callBack: () {
                            setState(() {
                              courseSelection = 1;
                              filteredItems = items
                                  .where((element) => element.isPopular)
                                  .toList();
                            });
                          },
                          isSelected: courseSelection == 1),
                      InkwellOptions(
                          label: 'Newest',
                          callBack: () {
                            setState(() {
                              courseSelection = 2;
                              filteredItems = items
                                  .where((element) => element.isNewest)
                                  .toList();
                            });
                          },
                          isSelected: courseSelection == 2),
                      InkwellOptions(
                          label: 'Milkbased',
                          callBack: () {
                            setState(() {
                              courseSelection = 3;
                              filteredItems = items
                                  .where((element) => element.isMilkBased)
                                  .toList();
                            });
                          },
                          isSelected: courseSelection == 3),
                    ],
                  ),

                  // CARD IMAGES
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      child: PageView(
                        scrollDirection: Axis.horizontal,
                        controller: mainController.cardController,
                        children: [
                          for (int i = 0; i < filteredItems.length; i++)
                            SmallCardImageStack(item: filteredItems[i]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
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
              isSelected: navSelection == 0 ? true : false,
            ),
            NavBarIcons(
                callBack: () {
                  PageRouter.instance
                      .openActivity(context, MenuView(items: items));
                },
                isSelected: navSelection == 1 ? true : false,
                iconData: Icons.favorite),
            NavBarIcons(
                callBack: () {
                  Get.toNamed(StringUtils.routeContact);
                  // setState(() {
                  //   navSelection = 2;
                  // });
                },
                isSelected: navSelection == 2 ? true : false,
                iconData: Icons.contact_phone),
            // NavBarIcons(
            //     callBack: () {
            //       setState(() {
            //         navSelection = 3;
            //       });
            //     },
            //     isSelected: navSelection == 3 ? true : false,
            //     iconData: Icons.person),
          ],
        ),
      ),
    );
  }
}

// Color(0xFF944dff)