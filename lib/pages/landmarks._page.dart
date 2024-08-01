import 'package:app4/const/colors.dart';
import 'package:app4/widget/reusable/image_card.dart';
import 'package:flutter/material.dart';

class Landmarks extends StatelessWidget {
  const Landmarks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: tbuttonTextColor,
            )),
        titleSpacing: -15,
        title: const Text(
          'Landmarks',
          style: TextStyle(color: tlandMarksColor, fontSize: 25),
        ),
        backgroundColor: tmainWhite,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                    color: tmainTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 10,
              ),
              const ImageCard(
                  title: "Landmarks Place-1",
                  imageUrl: "assets/landmark1.png",
                  description:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const ImageCard(
                  title: "Landmarks Place-2",
                  imageUrl: "assets/landmark2.png",
                  description:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const SizedBox(
                height: 25,
              )

              // ImageCard(),
            ],
          ),
        ),
      ),
    );
  }
}
