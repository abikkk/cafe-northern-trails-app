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
                  widget.item.imagePath,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.item.name,
                        overflow: TextOverflow.ellipsis,
                        style: AppThemeData.appTheme.textTheme.bodyMedium),
                    Text('\$ ${widget.item.price.toStringAsFixed(2)}',
                        style: AppThemeData.appTheme.textTheme.bodyMedium),
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
