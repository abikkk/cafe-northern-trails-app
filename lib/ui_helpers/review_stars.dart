import 'package:flutter/material.dart';

class ReviewStars extends StatefulWidget {
  const ReviewStars({super.key, required this.star});
  final int star;
  @override
  State<ReviewStars> createState() => _ReviewStarsState();
}

class _ReviewStarsState extends State<ReviewStars> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (var i = 0; i < widget.star; i++)
        const Icon(
          Icons.star,
          color: Color(0xFF944dff),
        )
    ]);
  }
}
