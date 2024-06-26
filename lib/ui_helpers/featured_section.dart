import 'package:Cafe_Night_Trails/utils/app_theme_data.dart';
import 'package:flutter/material.dart';
import '../ui_helpers/review_stars.dart';
import '../models/menu_item.dart';
import '../utils/app_colors.dart';
import '../utils/string_utils.dart';
import 'icon_label_pair.dart';

class SpecialSection extends StatefulWidget {
  const SpecialSection({super.key, required this.item});

  final MenuItem item;

  @override
  State<SpecialSection> createState() => _SpecialSectionState();
}

class _SpecialSectionState extends State<SpecialSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Card(
        // color: Colors.grey.shade300.withOpacity(0.3),
        // shape: ShapeBor,
        elevation: 10,
        child: Column(
          children: [
            // CARD
            Container(
              margin: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height / 3,
              child: Stack(
                children: <Widget>[
                  // CARD IMAGE
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(StringUtils.imageBorderRadius),
                    child: Center(
                      child: Image(
                        image: AssetImage('assets/${widget.item.imagePath}'),
                        fit: BoxFit.fill,
                      ),
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
                                onPressed: () {
                                  // setState(() {
                                  //   widget.item.isFavorite = true;
                                  // });
                                },
                                icon: Icon(
                                  (widget.item.isFavorite)
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                ))
                          ],
                        ),
                      ),

                      // IMAGE FOOTER FIELDS
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // SPECIALS COOK INFO
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(StringUtils
                                        .containerBorderRadiusSmall)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(Icons.account_box,
                                      color: secondary),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      widget.item.cook,
                                      style: AppThemeData
                                          .appTheme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // SPECIALS ITEM PRICE
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 14),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(StringUtils
                                        .containerBorderRadiusSmall)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Text(
                                '\$ ${widget.item.price.toStringAsFixed(2)}',
                                style:
                                    AppThemeData.appTheme.textTheme.bodyMedium,
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

            // ITEM DESCRIPTION
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListTile(
                title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.item.name,
                        style: AppThemeData.appTheme.textTheme.titleLarge!
                            .copyWith(fontSize: 33),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.item.stars.toString(),
                            style: AppThemeData.appTheme.textTheme.labelMedium!,
                          ),
                          ReviewStars(star: widget.item.stars)
                        ])
                  ],
                ),
                subtitle: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconLabelPair(
                        icon: Icons.timer_outlined,
                        label: '${widget.item.time} minutes',
                      ),
                      IconLabelPair(
                        icon: Icons.people_outline_outlined,
                        label: '${widget.item.reviews} reviews.',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
