import 'package:flutter/material.dart';
import '../ui_helpers/review_stars.dart';
import '../models/menu_item.dart';
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
    return Container(
      padding: const EdgeInsets.all(4),
      width: MediaQuery.of(context).size.width / 1.1,
      child: Card(
        child: Column(
          children: [
            // CARD
            Container(
              margin: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height / 2.8,
              child: Stack(
                children: <Widget>[
                  // CARD IMAGE
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(StringUtils.imageBorderRadius),
                    child: Center(
                      child: Image(
                        image: AssetImage(widget.item.imagePath),
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
                                  Icon(Icons.account_box),
                                  Text(
                                    widget.item.cook,
                                    style: TextStyle(fontSize: 10),
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
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xFF944dff)),
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
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.item.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              widget.item.stars.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ReviewStars(star: widget.item.stars)
                          ]),
                    )
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
                        label: widget.item.time,
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
