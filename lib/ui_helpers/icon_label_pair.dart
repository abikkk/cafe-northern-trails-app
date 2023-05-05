import 'package:flutter/material.dart';

class IconLabelPair extends StatefulWidget {
  const IconLabelPair({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  State<IconLabelPair> createState() => _IconLabelPairState();
}

class _IconLabelPairState extends State<IconLabelPair> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          widget.icon,
          size: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            widget.label,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
