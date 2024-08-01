import 'package:app4/const/colors.dart';
import 'package:app4/widget/share/places_description.dart';
import 'package:flutter/material.dart';

class NaturalWonder extends StatelessWidget {
  const NaturalWonder({super.key});

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
          'Natural Wonders',
          style: TextStyle(color: tnaturalColor, fontSize: 25),
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
              PalacesDescription(
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                title: "Nature Wonders Place-1",
                imageUrl: "assets/natural1.png",
                titleColor: tsubNaturalColor,
                isRound: false,
              ),
              const SizedBox(
                height: 20,
              ),
              PalacesDescription(
                  description:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  title: "Nature Wonders Place-2",
                  imageUrl: "assets/natural2.png",
                  titleColor: tsubNaturalColor,
                  isRound: false),
              const SizedBox(
                height: 20,
              ),
              PalacesDescription(
                  description:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  title: "Nature Wonders Place-3",
                  imageUrl: "assets/natural3.png",
                  titleColor: tsubNaturalColor,
                  isRound: false),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
