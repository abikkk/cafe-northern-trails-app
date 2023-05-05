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
      for (int i = 0; i < 5; i++)
        Icon(
          (i < widget.star) ? Icons.star : Icons.star_border,
        )
    ]);
  }
}
