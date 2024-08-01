import 'package:app4/const/colors.dart';
import 'package:flutter/material.dart';

class Vehicle extends StatelessWidget {
  final String vehicleTitle;
  final String imageUrl;

  const Vehicle(
      {super.key, required this.vehicleTitle, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            imageUrl,
            width: 90,
            height: 90,
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Text(
            vehicleTitle,
            // ignore: prefer_const_constructors
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: tfirstCardColor),
          ),

        
        )
      ],
    );
  }
}
