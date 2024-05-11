import 'package:flutter/material.dart';
import '../models/menu_item.dart';
import '../utils/app_theme_data.dart';

class SmallCardImageStack extends StatefulWidget {
  const SmallCardImageStack({super.key, required this.item});

  final MenuItem item;

  @override
  State<SmallCardImageStack> createState() => _SmallCardImageStackState();
}

class _SmallCardImageStackState extends State<SmallCardImageStack> {
  @override
  Widget build(BuildContext context) {
    return Card(
      // color: AppThemeData.appTheme.primaryColor.withOpacity(0.7),
      elevation: 10,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.height / 3,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image(
                height: MediaQuery.of(context).size.width / 2,
                width: MediaQuery.of(context).size.width / 2,
                image: AssetImage(
                  'assets/${widget.item.imagePath}',
                ),
                fit: BoxFit.contain,
              ),
            ),

            // FAVORITE ICON
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          (widget.item.isFavorite)
                              ? Icons.favorite
                              : Icons.favorite_border,
                          // color: Color(0xFF944dff),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('${widget.item.time} minutes',
                            overflow: TextOverflow.ellipsis,
                            style: AppThemeData.appTheme.textTheme.bodyLarge),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0, bottom: 2),
                          child: Text(
                              '\$ ${widget.item.price.toStringAsFixed(2)}',
                              style: AppThemeData.appTheme.textTheme.bodyLarge),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            border:
                                Border.all(width: 1, color: Colors.transparent),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 4),
                          child: Text(widget.item.name,
                              overflow: TextOverflow.ellipsis,
                              style: AppThemeData.appTheme.textTheme.titleLarge!
                                  .copyWith(fontSize: 28)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
