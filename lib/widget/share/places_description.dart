import 'package:app4/const/colors.dart';
import 'package:flutter/material.dart';

class PalacesDescription extends StatelessWidget {
  final String title;
  final Color titleColor;
  final String description;
  final String imageUrl;
  final bool isRound;

  const PalacesDescription(
      {super.key,
      required this.title,
      required this.titleColor,
      required this.description,
      required this.imageUrl,
      required this.isRound});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: titleColor),
        ),
        const SizedBox(
          height: 10,
        ),
        isRound
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ))
            : Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
        const SizedBox(
          height: 20,
        ),
        Text(
          description,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: tmainTextColor),
        ),
      ],
    );
  }
}
