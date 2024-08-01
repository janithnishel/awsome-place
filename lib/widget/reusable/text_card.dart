import 'package:app4/const/colors.dart';
import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  final double cardWidth;
  final double cardHeight;
  final Color cardColor;
  final String title;

  const TextCard(
      {super.key,
      required this.cardWidth,
      required this.cardHeight,
      required this.cardColor,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: tmainBlack,
          ),
        ),
      ),
    );
  }
}
