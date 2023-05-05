import 'package:flutter/material.dart';

class SmallCardImageStack extends StatefulWidget {
  const SmallCardImageStack({super.key,required this.imagePath});

  final String imagePath;
  @override
  State<SmallCardImageStack> createState() => _SmallCardImageStackState();
}

class _SmallCardImageStackState extends State<SmallCardImageStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image(
            height: MediaQuery.of(context).size.width / 2,
            width: MediaQuery.of(context).size.width / 2,
            image:  AssetImage(
              widget.imagePath,
            ),
            fit: BoxFit.contain,
          ),
        ),

        // FAVORITE ICON
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: Color(0xFF944dff),
              )),
        ),
      ],
    );
  }
}
