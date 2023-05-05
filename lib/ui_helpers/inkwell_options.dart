import 'package:flutter/material.dart';

class InkwellOptions extends StatefulWidget {
  const InkwellOptions(
      {super.key,
      required this.label,
      required this.callBack,
      required this.isSelected});

  final String label;
  final bool isSelected;
  final VoidCallback callBack;

  @override
  State<InkwellOptions> createState() => _InkwellOptionsState();
}

class _InkwellOptionsState extends State<InkwellOptions> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.callBack(),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:
              widget.isSelected ? const Color(0xFF944dff) : Colors.transparent,
          border: Border.all(width: 1, color: const Color(0xFF944dff)),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Text(
          widget.label,
          style: TextStyle(
              color: widget.isSelected ? Colors.white : const Color(0xFF944dff),
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
      ),
    );
  }
}
