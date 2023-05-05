import 'package:flutter/material.dart';
import 'package:template/ui_helpers/card_image_small.dart';
import 'package:template/ui_helpers/icon_label_pair.dart';
import 'package:template/ui_helpers/inkwell_options.dart';
import 'package:template/ui_helpers/navbar.dart';
import 'package:template/ui_helpers/review_stars.dart';
import 'package:template/ui_helpers/search_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(
          title: 'Hello, Tanvir !', subtitle: 'What you want to learn today?'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.subtitle});
  final String title, subtitle;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int courseSelection = 0, navSelection = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xFF944dff),
        elevation: 0,
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
                      // textAlign: TextAlign.start,
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
        actions: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_on,
                    size: 20,
                    color: Color(0xFF944dff),
                  )))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // SEARCH BAR
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
              decoration: BoxDecoration(
                color: const Color(0xFF944dff),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
                border: Border.all(
                  style: BorderStyle.none,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: const SearchBar(),
                    ),
                  ),

                  // FILTER ICON BUTTON
                  Container(
                      margin: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.filter_list,
                          size: 25,
                        ),
                      )),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
                  // SUB TEXTS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Featured Courses',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        'See all',
                      ),
                    ],
                  ),

                  // CARD
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height / 2.8,
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    //   border: Border.all(width: 1, color: Colors.white),
                    //   borderRadius: BorderRadius.all(Radius.circular(30)),
                    // ),
                    child: Stack(
                      children: <Widget>[
                        // CARD IMAGE
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: const Image(
                            image: AssetImage(
                              'card_image.jpg',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),

                        // FIELDS IN FRONT OF IMAGE
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // FAVORITE ICON
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.favorite_border,
                                        color: Color(0xFF944dff),
                                      ))
                                ],
                              ),
                            ),

                            // IMAGE FOOTER FIELDS
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // ROBERT FOX
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 1, color: Colors.white),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset: const Offset(0,
                                              1), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Icon(Icons.account_box),
                                        Text(
                                          'Robert Fox',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 14),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 1, color: Colors.white),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset: const Offset(0,
                                              1), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: const Text(
                                      '\$24.99',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFF944dff)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // PRODUCT DESIGN
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Product Design',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Row(children: const [
                             Text(
                              '5.0',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ReviewStars(star: 5)
                          ])
                        ],
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            IconLabelPair(
                              icon: Icons.description_outlined,
                              label: '24 lessons',
                            ),
                            IconLabelPair(
                              icon: Icons.timer_outlined,
                              label: '5 hours',
                            ),
                            IconLabelPair(
                              icon: Icons.people_outline_outlined,
                              label: '123 reviews',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // OUR COUSES SECTION
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Our Courses',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
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
                          label: 'All Courses',
                          callBack: () {
                            setState(() {
                              courseSelection = 0;
                            });
                          },
                          isSelected: courseSelection == 0),
                      InkwellOptions(
                          label: 'Popular',
                          callBack: () {
                            setState(() {
                              courseSelection = 1;
                            });
                          },
                          isSelected: courseSelection == 1),
                      InkwellOptions(
                          label: 'Newest',
                          callBack: () {
                            setState(() {
                              courseSelection = 2;
                            });
                          },
                          isSelected: courseSelection == 2),
                    ],
                  ),

                  // CARD IMAGES
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          SmallCardImageStack(imagePath: 'squirtle.jpg'),
                          SmallCardImageStack(imagePath: 'pikachu.jpg'),
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
      floatingActionButton: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xFF944dff),
          border: Border.all(width: 1, color: const Color(0xFF944dff)),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.list,
            // size: 44,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: Container(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavBarIcons(
              callBack: () {
                setState(() {
                  navSelection = 0;
                });
              },
              iconData: Icons.home,
              isSelected: navSelection == 0 ? true : false,
            ),
            NavBarIcons(
                callBack: () {
                  setState(() {
                    navSelection = 1;
                  });
                },
                isSelected: navSelection == 1 ? true : false,
                iconData: Icons.favorite),
            const SizedBox(
              width: 20,
            ),
            NavBarIcons(
                callBack: () {
                  setState(() {
                    navSelection = 2;
                  });
                },
                isSelected: navSelection == 2 ? true : false,
                iconData: Icons.message),
            NavBarIcons(
                callBack: () {
                  setState(() {
                    navSelection = 3;
                  });
                },
                isSelected: navSelection == 3 ? true : false,
                iconData: Icons.person),
          ],
        ),
      )),
    );
  }
}

// Color(0xFF944dff)