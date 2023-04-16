import 'package:flutter/material.dart';

class SquareTile extends StatefulWidget {
  final String imagePath;
  const SquareTile({
    super.key,
    required this.imagePath,
  });

  @override
  State<SquareTile> createState() => _SquareTileState();
}

class _SquareTileState extends State<SquareTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(120),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        widget.imagePath,
        height: 40,
      ),
    );
  }
}