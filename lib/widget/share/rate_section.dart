import 'package:app4/const/colors.dart';
import 'package:flutter/material.dart';

class RateSection extends StatelessWidget {
  const RateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xffCACACA).withOpacity(0.31),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              size: 30,
              color: tthirdCardColor,
            ),
            const Icon(
              Icons.star,
              size: 30,
              color: tthirdCardColor,
            ),
            const Icon(
              Icons.star,
              size: 30,
              color: tthirdCardColor,
            ),
            const Icon(
              Icons.star,
              size: 30,
              color: tthirdCardColor,
            ),
            Icon(
              Icons.star,
              size: 30,
              color: tmainTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
